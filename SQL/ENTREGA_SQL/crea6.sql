CREATE TABLE Empresa(
NIF VARCHAR2(9) PRIMARY KEY,
Nombre VARCHAR2(40) NOT NULL,
Direccion VARCHAR2(30) NOT NULL
);

CREATE TABLE Factura(
Fact# VARCHAR2(5) PRIMARY KEY,
Fecha DATE NOT NULL,
NIFE VARCHAR2(9) NOT NULL,
NIFC VARCHAR2(9) NOT NULL,
Base INT NOT NULL,
IVA INT NOT NULL,
Total INT NOT NULL,

FOREIGN KEY (NIFE) REFERENCES Empresa(NIF),
FOREIGN KEY (NIFC) REFERENCES Empresa(NIF)
);


CREATE TABLE Articulo(
Art# VARCHAR2(10) PRIMARY KEY,
Descripcion VARCHAR2(40),
PrecioU INT NOT NULL,
IVA INT NOT NULL
);

CREATE TABLE Linea(
Fact# VARCHAR2(5),
Art# VARCHAR2(10),
Cantidad INT NOT NULL,

PRIMARY KEY (Fact#, Art#),
FOREIGN KEY (Fact#) REFERENCES Factura(Fact#),
FOREIGN KEY (Art#) REFERENCES Articulo(Art#)
);
