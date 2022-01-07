
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {int inta; int status; int irq_lock; } ;
struct iwl_trans {int dev; } ;
typedef int irqreturn_t ;


 int CSR_FH_INT_STATUS ;
 int CSR_INT ;
 int CSR_INT_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*,...) ;
 int IWL_DL_ISR ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int IWL_WARN (struct iwl_trans*,char*,int) ;
 int STATUS_INT_ENABLED ;
 int iwl_enable_interrupts (struct iwl_trans*) ;
 scalar_t__ iwl_have_debug_level (int ) ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 scalar_t__ likely (int) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_iwlwifi_dev_irq (int ) ;

__attribute__((used)) static irqreturn_t iwl_pcie_isr(int irq, void *data)
{
 struct iwl_trans *trans = data;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 u32 inta, inta_mask;




 lockdep_assert_held(&trans_pcie->irq_lock);

 trace_iwlwifi_dev_irq(trans->dev);





 inta_mask = iwl_read32(trans, CSR_INT_MASK);
 iwl_write32(trans, CSR_INT_MASK, 0x00000000);


 inta = iwl_read32(trans, CSR_INT);

 if (inta & (~inta_mask)) {
  IWL_DEBUG_ISR(trans,
         "We got a masked interrupt (0x%08x)...Ack and ignore\n",
         inta & (~inta_mask));
  iwl_write32(trans, CSR_INT, inta & (~inta_mask));
  inta &= inta_mask;
 }




 if (!inta) {
  IWL_DEBUG_ISR(trans, "Ignore interrupt, inta == 0\n");
  goto none;
 }

 if ((inta == 0xFFFFFFFF) || ((inta & 0xFFFFFFF0) == 0xa5a5a5a0)) {


  IWL_WARN(trans, "HARDWARE GONE?? INTA == 0x%08x\n", inta);
  return IRQ_HANDLED;
 }
 trans_pcie->inta |= inta;

 if (likely(inta))
  return IRQ_WAKE_THREAD;
 else if (test_bit(STATUS_INT_ENABLED, &trans_pcie->status) &&
   !trans_pcie->inta)
  iwl_enable_interrupts(trans);
 return IRQ_HANDLED;

none:


 if (test_bit(STATUS_INT_ENABLED, &trans_pcie->status) &&
     !trans_pcie->inta)
  iwl_enable_interrupts(trans);

 return IRQ_NONE;
}
