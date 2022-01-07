
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int status; int irq_lock; } ;
struct iwl_trans {int op_mode; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_RFKILL ;
 int clear_bit (int ,int *) ;
 int iwl_disable_interrupts (struct iwl_trans*) ;
 int iwl_enable_rfkill_int (struct iwl_trans*) ;
 int iwl_is_rfkill_set (struct iwl_trans*) ;
 int iwl_op_mode_hw_rf_kill (int ,int) ;
 int iwl_pcie_apm_stop (struct iwl_trans*) ;
 int iwl_pcie_disable_ict (struct iwl_trans*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iwl_trans_pcie_stop_hw(struct iwl_trans *trans,
       bool op_mode_leaving)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 bool hw_rfkill;
 unsigned long flags;

 spin_lock_irqsave(&trans_pcie->irq_lock, flags);
 iwl_disable_interrupts(trans);
 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);

 iwl_pcie_apm_stop(trans);

 spin_lock_irqsave(&trans_pcie->irq_lock, flags);
 iwl_disable_interrupts(trans);
 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);

 iwl_pcie_disable_ict(trans);

 if (!op_mode_leaving) {




  iwl_enable_rfkill_int(trans);







  hw_rfkill = iwl_is_rfkill_set(trans);
  if (hw_rfkill)
   set_bit(STATUS_RFKILL, &trans_pcie->status);
  else
   clear_bit(STATUS_RFKILL, &trans_pcie->status);
  iwl_op_mode_hw_rf_kill(trans->op_mode, hw_rfkill);
 }
}
