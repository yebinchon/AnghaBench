
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int status; } ;
struct iwl_trans {int op_mode; } ;
struct fw_img {int dummy; } ;


 int CSR_INT ;
 int CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED ;
 int CSR_UCODE_DRV_GP1_CLR ;
 int CSR_UCODE_SW_BIT_RFKILL ;
 int EIO ;
 int ERFKILL ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int IWL_WARN (struct iwl_trans*,char*) ;
 int STATUS_FW_ERROR ;
 int STATUS_RFKILL ;
 int clear_bit (int ,int *) ;
 int iwl_enable_interrupts (struct iwl_trans*) ;
 int iwl_enable_rfkill_int (struct iwl_trans*) ;
 int iwl_is_rfkill_set (struct iwl_trans*) ;
 int iwl_op_mode_hw_rf_kill (int ,int) ;
 int iwl_pcie_load_given_ucode (struct iwl_trans*,struct fw_img const*) ;
 int iwl_pcie_nic_init (struct iwl_trans*) ;
 scalar_t__ iwl_pcie_prepare_card_hw (struct iwl_trans*) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int iwl_trans_pcie_start_fw(struct iwl_trans *trans,
       const struct fw_img *fw, bool run_in_rfkill)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int ret;
 bool hw_rfkill;


 if (iwl_pcie_prepare_card_hw(trans)) {
  IWL_WARN(trans, "Exit HW not ready\n");
  return -EIO;
 }

 clear_bit(STATUS_FW_ERROR, &trans_pcie->status);

 iwl_enable_rfkill_int(trans);


 hw_rfkill = iwl_is_rfkill_set(trans);
 if (hw_rfkill)
  set_bit(STATUS_RFKILL, &trans_pcie->status);
 else
  clear_bit(STATUS_RFKILL, &trans_pcie->status);
 iwl_op_mode_hw_rf_kill(trans->op_mode, hw_rfkill);
 if (hw_rfkill && !run_in_rfkill)
  return -ERFKILL;

 iwl_write32(trans, CSR_INT, 0xFFFFFFFF);

 ret = iwl_pcie_nic_init(trans);
 if (ret) {
  IWL_ERR(trans, "Unable to init nic\n");
  return ret;
 }


 iwl_write32(trans, CSR_UCODE_DRV_GP1_CLR, CSR_UCODE_SW_BIT_RFKILL);
 iwl_write32(trans, CSR_UCODE_DRV_GP1_CLR,
      CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);


 iwl_write32(trans, CSR_INT, 0xFFFFFFFF);
 iwl_enable_interrupts(trans);


 iwl_write32(trans, CSR_UCODE_DRV_GP1_CLR, CSR_UCODE_SW_BIT_RFKILL);
 iwl_write32(trans, CSR_UCODE_DRV_GP1_CLR, CSR_UCODE_SW_BIT_RFKILL);


 return iwl_pcie_load_given_ucode(trans, fw);
}
