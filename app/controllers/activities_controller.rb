# A tarefinha é nesse arquivo
class ActivitiesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        # listar as atividades (variável activities)

        # criar uma atividade (variável activity)
    end
    
    def create
        #Crie uma atividade aqui

        #Envie uma mensagem com flash[:msg] contendo o alerta

        write_alert_on_log
        redirect_to activities_index_url
    end

    def destroy
        #Destrua uma atividade por id

        #Envie uma mensagem com flash[:msg] contendo o alerta

        write_alert_on_log
        redirect_to activities_index_url
    end

    private

    def activity_params
        #Defina os parâmetros de cada atividade em params
    end

    def write_alert_on_log
        #Apenas para debug, ignorem isso
        Rails.logger.debug "--------------------------------------"
        Rails.logger.debug "Mensagem de alerta: " + @alert
        Rails.logger.debug "--------------------------------------"
    end
end
