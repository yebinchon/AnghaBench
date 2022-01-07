
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct isr_statistics {int unhandled; int tx; int rx; int wakeup; int sw; int ctkill; int rfkill; int alive; int sch; int hw; } ;
struct iwl_trans_pcie {int inta; int inta_mask; int ucode_write_complete; int status; int ucode_write_waitq; int * txq; int rxq; int wait_command_queue; int irq_lock; struct isr_statistics isr_stats; } ;
struct iwl_trans {int sync_cmd_lockdep_map; TYPE_2__* cfg; int op_mode; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;


 int CSR_FH_INT_RX_MASK ;
 int CSR_FH_INT_STATUS ;
 int CSR_FH_INT_TX_MASK ;
 int CSR_INT ;
 int CSR_INT_BIT_ALIVE ;
 int CSR_INT_BIT_CT_KILL ;
 int CSR_INT_BIT_FH_RX ;
 int CSR_INT_BIT_FH_TX ;
 int CSR_INT_BIT_HW_ERR ;
 int CSR_INT_BIT_RF_KILL ;
 int CSR_INT_BIT_RX_PERIODIC ;
 int CSR_INT_BIT_SCD ;
 int CSR_INT_BIT_SW_ERR ;
 int CSR_INT_BIT_SW_RX ;
 int CSR_INT_BIT_WAKEUP ;
 int CSR_INT_MASK ;
 int CSR_INT_PERIODIC_DIS ;
 int CSR_INT_PERIODIC_ENA ;
 int CSR_INT_PERIODIC_REG ;
 int IRQ_HANDLED ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*,...) ;
 int IWL_DEBUG_RF_KILL (struct iwl_trans*,char*) ;
 int IWL_DL_ISR ;
 int IWL_ERR (struct iwl_trans*,char*,...) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int IWL_WARN (struct iwl_trans*,char*,...) ;
 int STATUS_HCMD_ACTIVE ;
 int STATUS_INT_ENABLED ;
 int STATUS_RFKILL ;
 int clear_bit (int ,int *) ;
 int iwl_disable_interrupts (struct iwl_trans*) ;
 int iwl_enable_interrupts (struct iwl_trans*) ;
 int iwl_enable_rfkill_int (struct iwl_trans*) ;
 scalar_t__ iwl_have_debug_level (int ) ;
 int iwl_is_rfkill_set (struct iwl_trans*) ;
 int iwl_op_mode_hw_rf_kill (int ,int) ;
 int iwl_pcie_irq_handle_error (struct iwl_trans*) ;
 int iwl_pcie_rx_handle (struct iwl_trans*) ;
 int iwl_pcie_rxq_inc_wr_ptr (struct iwl_trans*,int *) ;
 int iwl_pcie_txq_inc_wr_ptr (struct iwl_trans*,int *) ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int iwl_write8 (struct iwl_trans*,int ,int ) ;
 int lock_map_acquire (int *) ;
 int lock_map_release (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

irqreturn_t iwl_pcie_irq_handler(int irq, void *dev_id)
{
 struct iwl_trans *trans = dev_id;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct isr_statistics *isr_stats = &trans_pcie->isr_stats;
 u32 inta = 0;
 u32 handled = 0;
 unsigned long flags;
 u32 i;




 lock_map_acquire(&trans->sync_cmd_lockdep_map);

 spin_lock_irqsave(&trans_pcie->irq_lock, flags);
 iwl_write32(trans, CSR_INT,
      trans_pcie->inta | ~trans_pcie->inta_mask);

 inta = trans_pcie->inta;
 trans_pcie->inta = 0;

 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);


 if (inta & CSR_INT_BIT_HW_ERR) {
  IWL_ERR(trans, "Hardware error detected.  Restarting.\n");


  iwl_disable_interrupts(trans);

  isr_stats->hw++;
  iwl_pcie_irq_handle_error(trans);

  handled |= CSR_INT_BIT_HW_ERR;

  goto out;
 }
 inta &= ~(CSR_INT_BIT_SCD | CSR_INT_BIT_ALIVE);


 if (inta & CSR_INT_BIT_RF_KILL) {
  bool hw_rfkill;

  hw_rfkill = iwl_is_rfkill_set(trans);
  IWL_WARN(trans, "RF_KILL bit toggled to %s.\n",
    hw_rfkill ? "disable radio" : "enable radio");

  isr_stats->rfkill++;

  iwl_op_mode_hw_rf_kill(trans->op_mode, hw_rfkill);
  if (hw_rfkill) {
   set_bit(STATUS_RFKILL, &trans_pcie->status);
   if (test_and_clear_bit(STATUS_HCMD_ACTIVE,
            &trans_pcie->status))
    IWL_DEBUG_RF_KILL(trans,
        "Rfkill while SYNC HCMD in flight\n");
   wake_up(&trans_pcie->wait_command_queue);
  } else {
   clear_bit(STATUS_RFKILL, &trans_pcie->status);
  }

  handled |= CSR_INT_BIT_RF_KILL;
 }


 if (inta & CSR_INT_BIT_CT_KILL) {
  IWL_ERR(trans, "Microcode CT kill error detected.\n");
  isr_stats->ctkill++;
  handled |= CSR_INT_BIT_CT_KILL;
 }


 if (inta & CSR_INT_BIT_SW_ERR) {
  IWL_ERR(trans, "Microcode SW error detected. "
   " Restarting 0x%X.\n", inta);
  isr_stats->sw++;
  iwl_pcie_irq_handle_error(trans);
  handled |= CSR_INT_BIT_SW_ERR;
 }


 if (inta & CSR_INT_BIT_WAKEUP) {
  IWL_DEBUG_ISR(trans, "Wakeup interrupt\n");
  iwl_pcie_rxq_inc_wr_ptr(trans, &trans_pcie->rxq);
  for (i = 0; i < trans->cfg->base_params->num_of_queues; i++)
   iwl_pcie_txq_inc_wr_ptr(trans, &trans_pcie->txq[i]);

  isr_stats->wakeup++;

  handled |= CSR_INT_BIT_WAKEUP;
 }




 if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX |
      CSR_INT_BIT_RX_PERIODIC)) {
  IWL_DEBUG_ISR(trans, "Rx interrupt\n");
  if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX)) {
   handled |= (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX);
   iwl_write32(trans, CSR_FH_INT_STATUS,
     CSR_FH_INT_RX_MASK);
  }
  if (inta & CSR_INT_BIT_RX_PERIODIC) {
   handled |= CSR_INT_BIT_RX_PERIODIC;
   iwl_write32(trans,
    CSR_INT, CSR_INT_BIT_RX_PERIODIC);
  }
  iwl_write8(trans, CSR_INT_PERIODIC_REG,
       CSR_INT_PERIODIC_DIS);

  iwl_pcie_rx_handle(trans);
  if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX))
   iwl_write8(trans, CSR_INT_PERIODIC_REG,
       CSR_INT_PERIODIC_ENA);

  isr_stats->rx++;
 }


 if (inta & CSR_INT_BIT_FH_TX) {
  iwl_write32(trans, CSR_FH_INT_STATUS, CSR_FH_INT_TX_MASK);
  IWL_DEBUG_ISR(trans, "uCode load interrupt\n");
  isr_stats->tx++;
  handled |= CSR_INT_BIT_FH_TX;

  trans_pcie->ucode_write_complete = 1;
  wake_up(&trans_pcie->ucode_write_waitq);
 }

 if (inta & ~handled) {
  IWL_ERR(trans, "Unhandled INTA bits 0x%08x\n", inta & ~handled);
  isr_stats->unhandled++;
 }

 if (inta & ~(trans_pcie->inta_mask)) {
  IWL_WARN(trans, "Disabled INTA bits 0x%08x were pending\n",
    inta & ~trans_pcie->inta_mask);
 }



 if (test_bit(STATUS_INT_ENABLED, &trans_pcie->status))
  iwl_enable_interrupts(trans);

 else if (handled & CSR_INT_BIT_RF_KILL)
  iwl_enable_rfkill_int(trans);

out:
 lock_map_release(&trans->sync_cmd_lockdep_map);
 return IRQ_HANDLED;
}
