
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_chain_noise_data {scalar_t__ state; scalar_t__ beacon_count; scalar_t__ chain_signal_c; scalar_t__ chain_signal_b; scalar_t__ chain_signal_a; scalar_t__ chain_noise_c; scalar_t__ chain_noise_b; scalar_t__ chain_noise_a; } ;
struct iwl_priv {int calib_disabled; int phy_calib_chain_noise_reset_cmd; struct iwl_chain_noise_data chain_noise_data; } ;
struct iwl_calib_chain_noise_reset_cmd {int hdr; } ;
typedef int cmd ;


 int CMD_SYNC ;
 scalar_t__ IWL_CHAIN_NOISE_ACCUMULATE ;
 scalar_t__ IWL_CHAIN_NOISE_ALIVE ;
 int IWL_CHAIN_NOISE_CALIB_DISABLED ;
 int IWL_DEBUG_CALIB (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 int REPLY_PHY_CALIBRATION_CMD ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,struct iwl_calib_chain_noise_reset_cmd*) ;
 scalar_t__ iwl_is_any_associated (struct iwl_priv*) ;
 int iwl_set_calib_hdr (int *,int ) ;
 int memset (struct iwl_calib_chain_noise_reset_cmd*,int ,int) ;

__attribute__((used)) static void iwlagn_chain_noise_reset(struct iwl_priv *priv)
{
 struct iwl_chain_noise_data *data = &priv->chain_noise_data;
 int ret;

 if (priv->calib_disabled & IWL_CHAIN_NOISE_CALIB_DISABLED)
  return;

 if ((data->state == IWL_CHAIN_NOISE_ALIVE) &&
     iwl_is_any_associated(priv)) {
  struct iwl_calib_chain_noise_reset_cmd cmd;


  data->chain_noise_a = 0;
  data->chain_noise_b = 0;
  data->chain_noise_c = 0;
  data->chain_signal_a = 0;
  data->chain_signal_b = 0;
  data->chain_signal_c = 0;
  data->beacon_count = 0;

  memset(&cmd, 0, sizeof(cmd));
  iwl_set_calib_hdr(&cmd.hdr,
   priv->phy_calib_chain_noise_reset_cmd);
  ret = iwl_dvm_send_cmd_pdu(priv,
     REPLY_PHY_CALIBRATION_CMD,
     CMD_SYNC, sizeof(cmd), &cmd);
  if (ret)
   IWL_ERR(priv,
    "Could not send REPLY_PHY_CALIBRATION_CMD\n");
  data->state = IWL_CHAIN_NOISE_ACCUMULATE;
  IWL_DEBUG_CALIB(priv, "Run chain_noise_calibrate\n");
 }
}
