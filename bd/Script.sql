----- CADUSUARIOS

CREATE TABLE CADUSUARIOS (
    IDUSUARIO INTEGER NOT NULL,
    USUARIO VARCHAR(50) NOT NULL,
    SENHA VARCHAR(12) NOT NULL,
    ATIVO CHAR(1) DEFAULT 'S' NOT NULL,
    DATACADASTRO TIMESTAMP NOT NULL)
	
alter table CADUSUARIOS
add constraint PK_CADUSUARIOS
primary key (IDUSUARIO)

----- CADMSG

CREATE TABLE CADMSG (
    IDMSG VARCHAR(36) NOT NULL,
    IDUSUARIODE INTEGER NOT NULL,
    IDUSUARIOPARA INTEGER NOT NULL,
    DATAMENSAGEM TIMESTAMP NOT NULL,
    LIDA CHAR(1) DEFAULT 'N' NOT NULL,
    MSG VARCHAR(8000) NOT NULL,
	ANEXO VARCHAR(1000);

alter table CADMSG
add constraint PK_CADMSG
primary key (IDMSG);

