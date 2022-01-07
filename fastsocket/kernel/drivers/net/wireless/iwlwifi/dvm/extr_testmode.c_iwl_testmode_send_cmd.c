
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int dummy; } ;
struct iwl_op_mode {int dummy; } ;
struct iwl_host_cmd {int dummy; } ;


 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;

__attribute__((used)) static int iwl_testmode_send_cmd(struct iwl_op_mode *op_mode,
     struct iwl_host_cmd *cmd)
{
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);
 return iwl_dvm_send_cmd(priv, cmd);
}
