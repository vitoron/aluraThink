#!/bin/bash

resposta_http=$(curl --write-out %(http_code) --silent --output /dev/null http://localhost)
if [ $resposta_http -ne 200 ]
then
	mail -s "Problema no servidor" vitoron3@gmail.com<<del 
	Houve um problema no servidor e os usuários pararam de ter acesso ao conteúdo web
del
	sudo service apache2 start	
fi
