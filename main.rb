require 'sinatra'
require "sinatra/reloader" if development?
#variables
#@fecha = 23

#routes

#get '/'do #genera el html
#  fecha=Time.now
#  "Hola hola, hoy es #{{fecha}}"
#end

#get '/andrea'do
#  "page from Andrea"
#end

#get '/:city' do  #path variables
#  params [:country]  #paramas captura informacion de la url
#end

get '/dado/:numero' do
  dado = rand(1..6)
  if params[:numero].to_i == dado #Todo pequedito ""
    erb :ganaste
  else
    "Te mataré"
  end
end
