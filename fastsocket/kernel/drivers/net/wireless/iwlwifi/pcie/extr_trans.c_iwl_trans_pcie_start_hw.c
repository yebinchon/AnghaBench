
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int status; } ;
struct iwl_trans {int op_mode; } ;


 int IWL_ERR (struct iwl_trans*,char*,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_RFKILL ;
 int clear_bit (int ,int *) ;
 int iwl_enable_rfkill_int (struct iwl_trans*) ;
 int iwl_is_rfkill_set (struct iwl_trans*) ;
 int iwl_op_mode_hw_rf_kill (int ,int) ;
 int iwl_pcie_apm_init (struct iwl_trans*) ;
 int iwl_pcie_prepare_card_hw (struct iwl_trans*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int iwl_trans_pcie_start_hw(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 bool hw_rfkill;
 int err;

 err = iwl_pcie_prepare_card_hw(trans);
 if (err) {
  IWL_ERR(trans, "Error while preparing HW: %d\n", err);
  return err;
 }

 iwl_pcie_apm_init(trans);


 iwl_enable_rfkill_int(trans);

 hw_rfkill = iwl_is_rfkill_set(trans);
 if (hw_rfkill)
  set_bit(STATUS_RFKILL, &trans_pcie->status);
 else
  clear_bit(STATUS_RFKILL, &trans_pcie->status);
 iwl_op_mode_hw_rf_kill(trans->op_mode, hw_rfkill);

 return 0;
}
