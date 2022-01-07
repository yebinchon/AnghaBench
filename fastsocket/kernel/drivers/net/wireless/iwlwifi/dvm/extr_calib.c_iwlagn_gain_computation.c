
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct iwl_chain_noise_data {int* delta_gain_code; int radio_write; int state; scalar_t__* disconn_array; } ;
struct iwl_priv {int phy_calib_chain_noise_gain_cmd; TYPE_2__* cfg; struct iwl_chain_noise_data chain_noise_data; } ;
struct iwl_calib_chain_noise_gain_cmd {int delta_gain_1; int delta_gain_2; int hdr; } ;
typedef int s32 ;
typedef int cmd ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int chain_noise_scale; } ;


 scalar_t__ CHAIN_NOISE_MAX_DELTA_GAIN_CODE ;
 int CMD_ASYNC ;
 int IWL_CHAIN_NOISE_CALIBRATED ;
 int IWL_DEBUG_CALIB (struct iwl_priv*,char*,int,int) ;
 int NUM_RX_CHAINS ;
 int REPLY_PHY_CALIBRATION_CMD ;
 int abs (int) ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,struct iwl_calib_chain_noise_gain_cmd*) ;
 int iwl_set_calib_hdr (int *,int ) ;
 int memset (struct iwl_calib_chain_noise_gain_cmd*,int ,int) ;
 int min (int ,long) ;

__attribute__((used)) static void iwlagn_gain_computation(struct iwl_priv *priv,
        u32 average_noise[NUM_RX_CHAINS],
        u8 default_chain)
{
 int i;
 s32 delta_g;
 struct iwl_chain_noise_data *data = &priv->chain_noise_data;




 for (i = default_chain + 1; i < NUM_RX_CHAINS; i++) {
  if ((data->disconn_array[i])) {
   data->delta_gain_code[i] = 0;
   continue;
  }

  delta_g = (priv->cfg->base_params->chain_noise_scale *
   ((s32)average_noise[default_chain] -
   (s32)average_noise[i])) / 1500;


  data->delta_gain_code[i] =
   min(abs(delta_g),
   (long) CHAIN_NOISE_MAX_DELTA_GAIN_CODE);

  if (delta_g < 0)
   data->delta_gain_code[i] |= (1 << 2);
 }

 IWL_DEBUG_CALIB(priv, "Delta gains: ANT_B = %d  ANT_C = %d\n",
   data->delta_gain_code[1], data->delta_gain_code[2]);

 if (!data->radio_write) {
  struct iwl_calib_chain_noise_gain_cmd cmd;

  memset(&cmd, 0, sizeof(cmd));

  iwl_set_calib_hdr(&cmd.hdr,
   priv->phy_calib_chain_noise_gain_cmd);
  cmd.delta_gain_1 = data->delta_gain_code[1];
  cmd.delta_gain_2 = data->delta_gain_code[2];
  iwl_dvm_send_cmd_pdu(priv, REPLY_PHY_CALIBRATION_CMD,
   CMD_ASYNC, sizeof(cmd), &cmd);

  data->radio_write = 1;
  data->state = IWL_CHAIN_NOISE_CALIBRATED;
 }
}
