
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int dummy; } ;
struct iwl_op_mode {int dummy; } ;


 int IWL_ERR (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 int iwl_check_for_ct_kill (struct iwl_priv*) ;
 int iwlagn_fw_error (struct iwl_priv*,int) ;

__attribute__((used)) static void iwl_cmd_queue_full(struct iwl_op_mode *op_mode)
{
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);

 if (!iwl_check_for_ct_kill(priv)) {
  IWL_ERR(priv, "Restarting adapter queue is full\n");
  iwlagn_fw_error(priv, 0);
 }
}
