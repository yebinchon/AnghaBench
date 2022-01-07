
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int unhandled; int tx; int rx; int wakeup; int sw; int alive; int sch; int hw; } ;
struct il_priv {int inta_mask; int status; TYPE_1__ isr_stats; int * txq; int rxq; int lock; } ;


 int CSR39_FH_INT_RX_MASK ;
 int CSR39_FH_INT_TX_MASK ;
 int CSR_FH_INT_STATUS ;
 int CSR_INT ;
 int CSR_INT_BIT_ALIVE ;
 int CSR_INT_BIT_FH_RX ;
 int CSR_INT_BIT_FH_TX ;
 int CSR_INT_BIT_HW_ERR ;
 int CSR_INT_BIT_SCD ;
 int CSR_INT_BIT_SW_ERR ;
 int CSR_INT_BIT_SW_RX ;
 int CSR_INT_BIT_WAKEUP ;
 int CSR_INT_MASK ;
 int D_ISR (char*,...) ;
 int FH39_SRVC_CHNL ;
 int FH39_TCSR_CREDIT (int ) ;
 int IL_DL_ISR ;
 int IL_ERR (char*,...) ;
 int IL_WARN (char*,int) ;
 int S_INT_ENABLED ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_wr (struct il_priv*,int ,int) ;
 int il3945_rx_handle (struct il_priv*) ;
 int il_disable_interrupts (struct il_priv*) ;
 int il_enable_interrupts (struct il_priv*) ;
 int il_get_debug_level (struct il_priv*) ;
 int il_irq_handle_error (struct il_priv*) ;
 int il_rx_queue_update_write_ptr (struct il_priv*,int *) ;
 int il_txq_update_write_ptr (struct il_priv*,int *) ;
 int il_wr (struct il_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
il3945_irq_tasklet(struct il_priv *il)
{
 u32 inta, handled = 0;
 u32 inta_fh;
 unsigned long flags;




 spin_lock_irqsave(&il->lock, flags);




 inta = _il_rd(il, CSR_INT);
 _il_wr(il, CSR_INT, inta);




 inta_fh = _il_rd(il, CSR_FH_INT_STATUS);
 _il_wr(il, CSR_FH_INT_STATUS, inta_fh);
 spin_unlock_irqrestore(&il->lock, flags);





 if (inta_fh & CSR39_FH_INT_RX_MASK)
  inta |= CSR_INT_BIT_FH_RX;
 if (inta_fh & CSR39_FH_INT_TX_MASK)
  inta |= CSR_INT_BIT_FH_TX;


 if (inta & CSR_INT_BIT_HW_ERR) {
  IL_ERR("Hardware error detected.  Restarting.\n");


  il_disable_interrupts(il);

  il->isr_stats.hw++;
  il_irq_handle_error(il);

  handled |= CSR_INT_BIT_HW_ERR;

  return;
 }
 inta &= ~(CSR_INT_BIT_SCD | CSR_INT_BIT_ALIVE);


 if (inta & CSR_INT_BIT_SW_ERR) {
  IL_ERR("Microcode SW error detected. " "Restarting 0x%X.\n",
         inta);
  il->isr_stats.sw++;
  il_irq_handle_error(il);
  handled |= CSR_INT_BIT_SW_ERR;
 }


 if (inta & CSR_INT_BIT_WAKEUP) {
  D_ISR("Wakeup interrupt\n");
  il_rx_queue_update_write_ptr(il, &il->rxq);
  il_txq_update_write_ptr(il, &il->txq[0]);
  il_txq_update_write_ptr(il, &il->txq[1]);
  il_txq_update_write_ptr(il, &il->txq[2]);
  il_txq_update_write_ptr(il, &il->txq[3]);
  il_txq_update_write_ptr(il, &il->txq[4]);
  il_txq_update_write_ptr(il, &il->txq[5]);

  il->isr_stats.wakeup++;
  handled |= CSR_INT_BIT_WAKEUP;
 }




 if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX)) {
  il3945_rx_handle(il);
  il->isr_stats.rx++;
  handled |= (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX);
 }

 if (inta & CSR_INT_BIT_FH_TX) {
  D_ISR("Tx interrupt\n");
  il->isr_stats.tx++;

  _il_wr(il, CSR_FH_INT_STATUS, (1 << 6));
  il_wr(il, FH39_TCSR_CREDIT(FH39_SRVC_CHNL), 0x0);
  handled |= CSR_INT_BIT_FH_TX;
 }

 if (inta & ~handled) {
  IL_ERR("Unhandled INTA bits 0x%08x\n", inta & ~handled);
  il->isr_stats.unhandled++;
 }

 if (inta & ~il->inta_mask) {
  IL_WARN("Disabled INTA bits 0x%08x were pending\n",
   inta & ~il->inta_mask);
  IL_WARN("   with inta_fh = 0x%08x\n", inta_fh);
 }



 if (test_bit(S_INT_ENABLED, &il->status))
  il_enable_interrupts(il);
}
