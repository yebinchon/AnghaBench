
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {scalar_t__ ucode_owner; int trans; int mutex; int ucode_loaded; int status; } ;
struct iwl_host_cmd {int flags; int id; } ;


 int CMD_ASYNC ;
 int CMD_ON_DEMAND ;
 int EIO ;
 int IWL_DEBUG_HC (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*,int ) ;
 scalar_t__ IWL_OWNERSHIP_TM ;
 int IWL_WARN (struct iwl_priv*,char*,char*) ;
 int STATUS_FW_ERROR ;
 int iwl_dvm_get_cmd_string (int ) ;
 scalar_t__ iwl_is_ctkill (struct iwl_priv*) ;
 scalar_t__ iwl_is_rfkill (struct iwl_priv*) ;
 int iwl_trans_send_cmd (int ,struct iwl_host_cmd*) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int iwl_dvm_send_cmd(struct iwl_priv *priv, struct iwl_host_cmd *cmd)
{
 if (iwl_is_rfkill(priv) || iwl_is_ctkill(priv)) {
  IWL_WARN(priv, "Not sending command - %s KILL\n",
    iwl_is_rfkill(priv) ? "RF" : "CT");
  return -EIO;
 }

 if (test_bit(STATUS_FW_ERROR, &priv->status)) {
  IWL_ERR(priv, "Command %s failed: FW Error\n",
   iwl_dvm_get_cmd_string(cmd->id));
  return -EIO;
 }





 if (!priv->ucode_loaded) {
  IWL_ERR(priv, "Fw not loaded - dropping CMD: %x\n", cmd->id);
  return -EIO;
 }






 if (!(cmd->flags & CMD_ASYNC))
  lockdep_assert_held(&priv->mutex);

 if (priv->ucode_owner == IWL_OWNERSHIP_TM &&
     !(cmd->flags & CMD_ON_DEMAND)) {
  IWL_DEBUG_HC(priv, "tm own the uCode, no regular hcmd send\n");
  return -EIO;
 }

 return iwl_trans_send_cmd(priv->trans, cmd);
}
