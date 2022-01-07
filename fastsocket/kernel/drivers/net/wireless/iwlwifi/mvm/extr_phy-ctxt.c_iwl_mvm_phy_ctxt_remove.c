
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_phy_context_cmd {int dummy; } ;
struct iwl_mvm_phy_ctxt {int id; } ;
struct iwl_mvm {int mutex; } ;


 int CMD_SYNC ;
 int FW_CTXT_ACTION_REMOVE ;
 int IWL_ERR (struct iwl_mvm*,char*,int ) ;
 int PHY_CONTEXT_CMD ;
 int iwl_mvm_phy_ctxt_cmd_hdr (struct iwl_mvm_phy_ctxt*,struct iwl_phy_context_cmd*,int ,int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_phy_context_cmd*) ;
 int lockdep_assert_held (int *) ;

void iwl_mvm_phy_ctxt_remove(struct iwl_mvm *mvm, struct iwl_mvm_phy_ctxt *ctxt)
{
 struct iwl_phy_context_cmd cmd;
 int ret;

 lockdep_assert_held(&mvm->mutex);

 iwl_mvm_phy_ctxt_cmd_hdr(ctxt, &cmd, FW_CTXT_ACTION_REMOVE, 0);
 ret = iwl_mvm_send_cmd_pdu(mvm, PHY_CONTEXT_CMD, CMD_SYNC,
       sizeof(struct iwl_phy_context_cmd),
       &cmd);
 if (ret)
  IWL_ERR(mvm, "Failed to send PHY remove: ctxt id=%d\n",
   ctxt->id);
}
