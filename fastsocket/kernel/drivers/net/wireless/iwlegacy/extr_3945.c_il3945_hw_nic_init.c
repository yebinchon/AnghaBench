
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_rx_queue {int write; int bd; } ;
struct il_priv {int status; int lock; struct il_rx_queue rxq; } ;


 int ENOMEM ;
 int FH39_RCSR_WPTR (int ) ;
 int IL_ERR (char*) ;
 int S_INIT ;
 int il3945_apm_init (struct il_priv*) ;
 int il3945_nic_config (struct il_priv*) ;
 int il3945_rx_init (struct il_priv*,struct il_rx_queue*) ;
 int il3945_rx_queue_reset (struct il_priv*,struct il_rx_queue*) ;
 int il3945_rx_replenish (struct il_priv*) ;
 int il3945_set_pwr_vmain (struct il_priv*) ;
 int il3945_txq_ctx_reset (struct il_priv*) ;
 int il_rx_queue_alloc (struct il_priv*) ;
 int il_wr (struct il_priv*,int ,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
il3945_hw_nic_init(struct il_priv *il)
{
 int rc;
 unsigned long flags;
 struct il_rx_queue *rxq = &il->rxq;

 spin_lock_irqsave(&il->lock, flags);
 il3945_apm_init(il);
 spin_unlock_irqrestore(&il->lock, flags);

 il3945_set_pwr_vmain(il);
 il3945_nic_config(il);


 if (!rxq->bd) {
  rc = il_rx_queue_alloc(il);
  if (rc) {
   IL_ERR("Unable to initialize Rx queue\n");
   return -ENOMEM;
  }
 } else
  il3945_rx_queue_reset(il, rxq);

 il3945_rx_replenish(il);

 il3945_rx_init(il, rxq);






 il_wr(il, FH39_RCSR_WPTR(0), rxq->write & ~7);

 rc = il3945_txq_ctx_reset(il);
 if (rc)
  return rc;

 set_bit(S_INIT, &il->status);

 return 0;
}
