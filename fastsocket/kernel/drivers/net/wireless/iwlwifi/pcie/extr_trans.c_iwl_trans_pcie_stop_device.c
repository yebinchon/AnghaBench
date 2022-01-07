
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int status; int irq_lock; } ;
struct iwl_trans {int dummy; } ;


 int APMG_CLK_DIS_REG ;
 int APMG_CLK_VAL_DMA_CLK_RQT ;
 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;
 int CSR_RESET ;
 int CSR_RESET_REG_FLAG_NEVO_RESET ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_DEVICE_ENABLED ;
 int STATUS_HCMD_ACTIVE ;
 int STATUS_INT_ENABLED ;
 int STATUS_RFKILL ;
 int STATUS_TPOWER_PMI ;
 int clear_bit (int ,int *) ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_disable_interrupts (struct iwl_trans*) ;
 int iwl_enable_rfkill_int (struct iwl_trans*) ;
 int iwl_pcie_apm_stop (struct iwl_trans*) ;
 int iwl_pcie_disable_ict (struct iwl_trans*) ;
 int iwl_pcie_rx_stop (struct iwl_trans*) ;
 int iwl_pcie_tx_stop (struct iwl_trans*) ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;
 int iwl_write_prph (struct iwl_trans*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static void iwl_trans_pcie_stop_device(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 unsigned long flags;


 spin_lock_irqsave(&trans_pcie->irq_lock, flags);
 iwl_disable_interrupts(trans);
 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);


 iwl_pcie_disable_ict(trans);
 if (test_bit(STATUS_DEVICE_ENABLED, &trans_pcie->status)) {
  iwl_pcie_tx_stop(trans);
  iwl_pcie_rx_stop(trans);


  iwl_write_prph(trans, APMG_CLK_DIS_REG,
          APMG_CLK_VAL_DMA_CLK_RQT);
  udelay(5);
 }


 iwl_clear_bit(trans, CSR_GP_CNTRL,
        CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);


 iwl_pcie_apm_stop(trans);




 spin_lock_irqsave(&trans_pcie->irq_lock, flags);
 iwl_disable_interrupts(trans);
 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);

 iwl_enable_rfkill_int(trans);


 iwl_write32(trans, CSR_RESET, CSR_RESET_REG_FLAG_NEVO_RESET);


 clear_bit(STATUS_HCMD_ACTIVE, &trans_pcie->status);
 clear_bit(STATUS_INT_ENABLED, &trans_pcie->status);
 clear_bit(STATUS_DEVICE_ENABLED, &trans_pcie->status);
 clear_bit(STATUS_TPOWER_PMI, &trans_pcie->status);
 clear_bit(STATUS_RFKILL, &trans_pcie->status);
}
