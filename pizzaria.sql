/**
	
    @author Vinicius
*/

create database dbpizzaria;
use dbpizzaria;

create table usuarios(
	id int primary key auto_increment,
	usuario varchar(50) not null,
	login varchar(50) not null unique,
    senha varchar(250) not null
    
);

describe usuarios;


insert into usuarios(usuario,login,senha)
values('Vinicius','admin',md5('12345'));

insert into usuarios(usuario,login,senha)
values('Kelly Cristina','kelly',md5('123'));

insert into usuarios(usuario,login,senha)
values('Joao','jao',md5('123'));


select * from usuarios;
select * from usuarios where id=1;


select * from usuarios where login='admin' and senha=md5('123456');

update usuarios set usuario='Kelly Cristina dos Santos',
login='kellycris',senha=md5('1234') where id=2;

delete from usuarios where id=3;


create table clientes(
	idcli int primary key auto_increment,
    nome varchar(50) not null,
    endereco varchar(50) not null,
    numero varchar(12) not null,
    bairro varchar(50) not null,
    fone varchar(15) not null
);

describe clientes;

drop table clientes;

insert into clientes (nome,endereco,numero,bairro,fone)
values ('Edilson','Rua Carlos Monza','2768','Tatuapé','99999-1111');
insert into clientes (nome,endereco,numero,bairro,fone)
values ('Jobs','Rua do Morcego','1000','Pinheiros','99999-2222');
insert into clientes (nome,endereco,numero,bairro,fone)
values ('shark','Avenida Arch','678','Copacabana','99999-3333');

update clientes set nome='Edilson',
endereco='Rua Carlos Oliveira',numero='12',bairro='fonte luminosa', fone='99999-0000' where idcli=1;

select * from clientes;

select * from clientes order by nome asc;

delete from clientes where idcli=1;

