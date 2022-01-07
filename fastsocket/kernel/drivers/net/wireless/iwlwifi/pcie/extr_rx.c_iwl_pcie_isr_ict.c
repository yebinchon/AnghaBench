
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {size_t ict_index; int inta_mask; int inta; int irq_lock; int status; scalar_t__* ict_tbl; int use_ict; } ;
struct iwl_trans {int dev; } ;
typedef int irqreturn_t ;


 int CSR_INT_MASK ;
 int ICT_COUNT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*,...) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_INT_ENABLED ;
 int iwl_enable_interrupts (struct iwl_trans*) ;
 int iwl_pcie_isr (int,void*) ;
 size_t iwl_queue_inc_wrap (size_t,int ) ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int le32_to_cpu (scalar_t__) ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_iwlwifi_dev_ict_read (int ,size_t,int) ;
 int trace_iwlwifi_dev_irq (int ) ;
 scalar_t__ unlikely (int) ;

irqreturn_t iwl_pcie_isr_ict(int irq, void *data)
{
 struct iwl_trans *trans = data;
 struct iwl_trans_pcie *trans_pcie;
 u32 inta, inta_mask;
 u32 val = 0;
 u32 read;
 unsigned long flags;

 if (!trans)
  return IRQ_NONE;

 trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 spin_lock_irqsave(&trans_pcie->irq_lock, flags);




 if (unlikely(!trans_pcie->use_ict)) {
  irqreturn_t ret = iwl_pcie_isr(irq, data);
  spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);
  return ret;
 }

 trace_iwlwifi_dev_irq(trans->dev);






 inta_mask = iwl_read32(trans, CSR_INT_MASK);
 iwl_write32(trans, CSR_INT_MASK, 0x00000000);




 read = le32_to_cpu(trans_pcie->ict_tbl[trans_pcie->ict_index]);
 trace_iwlwifi_dev_ict_read(trans->dev, trans_pcie->ict_index, read);
 if (!read) {
  IWL_DEBUG_ISR(trans, "Ignore interrupt, inta == 0\n");
  goto none;
 }





 do {
  val |= read;
  IWL_DEBUG_ISR(trans, "ICT index %d value 0x%08X\n",
    trans_pcie->ict_index, read);
  trans_pcie->ict_tbl[trans_pcie->ict_index] = 0;
  trans_pcie->ict_index =
   iwl_queue_inc_wrap(trans_pcie->ict_index, ICT_COUNT);

  read = le32_to_cpu(trans_pcie->ict_tbl[trans_pcie->ict_index]);
  trace_iwlwifi_dev_ict_read(trans->dev, trans_pcie->ict_index,
        read);
 } while (read);


 if (val == 0xffffffff)
  val = 0;
 if (val & 0xC0000)
  val |= 0x8000;

 inta = (0xff & val) | ((0xff00 & val) << 16);
 IWL_DEBUG_ISR(trans, "ISR inta 0x%08x, enabled 0x%08x ict 0x%08x\n",
        inta, inta_mask, val);

 inta &= trans_pcie->inta_mask;
 trans_pcie->inta |= inta;


 if (likely(inta)) {
  spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);
  return IRQ_WAKE_THREAD;
 } else if (test_bit(STATUS_INT_ENABLED, &trans_pcie->status) &&
   !trans_pcie->inta) {




  iwl_enable_interrupts(trans);
 }

 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);
 return IRQ_HANDLED;

 none:



 if (test_bit(STATUS_INT_ENABLED, &trans_pcie->status) &&
     !trans_pcie->inta)
  iwl_enable_interrupts(trans);

 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);
 return IRQ_NONE;
}
