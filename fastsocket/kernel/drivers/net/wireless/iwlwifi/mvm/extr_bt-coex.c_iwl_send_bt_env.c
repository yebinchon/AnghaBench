
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct iwl_mvm {int dummy; } ;
struct iwl_bt_coex_prot_env_cmd {void* type; void* action; } ;
typedef int env_cmd ;


 int BT_COEX_PROT_ENV ;
 int CMD_SYNC ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_bt_coex_prot_env_cmd*) ;

__attribute__((used)) static int iwl_send_bt_env(struct iwl_mvm *mvm, u8 action, u8 type)
{
 struct iwl_bt_coex_prot_env_cmd env_cmd;
 int ret;

 env_cmd.action = action;
 env_cmd.type = type;
 ret = iwl_mvm_send_cmd_pdu(mvm, BT_COEX_PROT_ENV, CMD_SYNC,
       sizeof(env_cmd), &env_cmd);
 if (ret)
  IWL_ERR(mvm, "failed to send BT env command\n");
 return ret;
}
