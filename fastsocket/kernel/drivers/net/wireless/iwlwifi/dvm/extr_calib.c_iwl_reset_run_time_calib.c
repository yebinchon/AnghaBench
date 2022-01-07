
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_sensitivity_data {int dummy; } ;
struct TYPE_2__ {int * delta_gain_code; } ;
struct iwl_priv {TYPE_1__ chain_noise_data; TYPE_1__ sensitivity_data; } ;
struct iwl_chain_noise_data {int dummy; } ;


 int CHAIN_NOISE_DELTA_GAIN_INIT_VAL ;
 int CMD_ASYNC ;
 int NUM_RX_CHAINS ;
 int iwl_send_statistics_request (struct iwl_priv*,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

void iwl_reset_run_time_calib(struct iwl_priv *priv)
{
 int i;
 memset(&(priv->sensitivity_data), 0,
        sizeof(struct iwl_sensitivity_data));
 memset(&(priv->chain_noise_data), 0,
        sizeof(struct iwl_chain_noise_data));
 for (i = 0; i < NUM_RX_CHAINS; i++)
  priv->chain_noise_data.delta_gain_code[i] =
    CHAIN_NOISE_DELTA_GAIN_INIT_VAL;



 iwl_send_statistics_request(priv, CMD_ASYNC, 1);
}
