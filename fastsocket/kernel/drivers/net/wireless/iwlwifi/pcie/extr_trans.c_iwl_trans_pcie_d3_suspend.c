
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_INIT_DONE ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;
 int CSR_UCODE_DRV_GP1_BIT_D3_CFG_COMPLETE ;
 int CSR_UCODE_DRV_GP1_SET ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_disable_interrupts (struct iwl_trans*) ;
 int iwl_pcie_disable_ict (struct iwl_trans*) ;
 int iwl_pcie_set_pwr (struct iwl_trans*,int) ;
 int iwl_trans_pcie_tx_reset (struct iwl_trans*) ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static void iwl_trans_pcie_d3_suspend(struct iwl_trans *trans)
{

 iwl_write32(trans, CSR_UCODE_DRV_GP1_SET,
      CSR_UCODE_DRV_GP1_BIT_D3_CFG_COMPLETE);

 iwl_disable_interrupts(trans);
 iwl_pcie_disable_ict(trans);

 iwl_clear_bit(trans, CSR_GP_CNTRL,
        CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);
 iwl_clear_bit(trans, CSR_GP_CNTRL,
        CSR_GP_CNTRL_REG_FLAG_INIT_DONE);






 iwl_trans_pcie_tx_reset(trans);

 iwl_pcie_set_pwr(trans, 1);
}
