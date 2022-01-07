
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sleep_cmd; int sleep_cmd_next; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct iwl_priv {TYPE_2__ power_data; TYPE_1__ chain_noise_data; int status; int mutex; } ;
struct iwl_powertable_cmd {int flags; } ;


 int EIO ;
 scalar_t__ IWL_CHAIN_NOISE_ALIVE ;
 scalar_t__ IWL_CHAIN_NOISE_DONE ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*) ;
 int IWL_DEBUG_POWER (struct iwl_priv*,char*,scalar_t__) ;
 int IWL_ERR (struct iwl_priv*,char*,int) ;
 int IWL_POWER_DRIVER_ALLOW_SLEEP_MSK ;
 int STATUS_SCANNING ;
 int iwl_dvm_set_pmi (struct iwl_priv*,int) ;
 int iwl_is_ready_rf (struct iwl_priv*) ;
 int iwl_set_power (struct iwl_priv*,struct iwl_powertable_cmd*) ;
 int iwl_update_chain_flags (struct iwl_priv*) ;
 int lockdep_assert_held (int *) ;
 int memcmp (int *,struct iwl_powertable_cmd*,int) ;
 int memcpy (int *,struct iwl_powertable_cmd*,int) ;
 scalar_t__ test_bit (int ,int *) ;

int iwl_power_set_mode(struct iwl_priv *priv, struct iwl_powertable_cmd *cmd,
         bool force)
{
 int ret;
 bool update_chains;

 lockdep_assert_held(&priv->mutex);


 update_chains = priv->chain_noise_data.state == IWL_CHAIN_NOISE_DONE ||
   priv->chain_noise_data.state == IWL_CHAIN_NOISE_ALIVE;

 if (!memcmp(&priv->power_data.sleep_cmd, cmd, sizeof(*cmd)) && !force)
  return 0;

 if (!iwl_is_ready_rf(priv))
  return -EIO;


 memcpy(&priv->power_data.sleep_cmd_next, cmd, sizeof(*cmd));
 if (test_bit(STATUS_SCANNING, &priv->status) && !force) {
  IWL_DEBUG_INFO(priv, "Defer power set mode while scanning\n");
  return 0;
 }

 if (cmd->flags & IWL_POWER_DRIVER_ALLOW_SLEEP_MSK)
  iwl_dvm_set_pmi(priv, 1);

 ret = iwl_set_power(priv, cmd);
 if (!ret) {
  if (!(cmd->flags & IWL_POWER_DRIVER_ALLOW_SLEEP_MSK))
   iwl_dvm_set_pmi(priv, 0);

  if (update_chains)
   iwl_update_chain_flags(priv);
  else
   IWL_DEBUG_POWER(priv,
     "Cannot update the power, chain noise "
     "calibration running: %d\n",
     priv->chain_noise_data.state);

  memcpy(&priv->power_data.sleep_cmd, cmd, sizeof(*cmd));
 } else
  IWL_ERR(priv, "set power fail, ret = %d", ret);

 return ret;
}
