
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct iwl_bt_coex_prio_tbl_cmd {int dummy; } ;


 int BT_COEX_PRIO_TABLE ;
 int CMD_SYNC ;
 int iwl_bt_prio_tbl ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,int *) ;

int iwl_send_bt_prio_tbl(struct iwl_mvm *mvm)
{
 return iwl_mvm_send_cmd_pdu(mvm, BT_COEX_PRIO_TABLE, CMD_SYNC,
        sizeof(struct iwl_bt_coex_prio_tbl_cmd),
        &iwl_bt_prio_tbl);
}
