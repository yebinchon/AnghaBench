
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_txq_num; } ;
struct TYPE_3__ {int dma; } ;
struct il_priv {TYPE_2__ hw_params; int lock; TYPE_1__ kw; } ;


 int FH49_KW_MEM_ADDR_REG ;
 int il4965_txq_set_sched (struct il_priv*,int ) ;
 int il_tx_queue_reset (struct il_priv*,int) ;
 int il_wr (struct il_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il4965_txq_ctx_reset(struct il_priv *il)
{
 int txq_id;
 unsigned long flags;

 spin_lock_irqsave(&il->lock, flags);


 il4965_txq_set_sched(il, 0);

 il_wr(il, FH49_KW_MEM_ADDR_REG, il->kw.dma >> 4);

 spin_unlock_irqrestore(&il->lock, flags);


 for (txq_id = 0; txq_id < il->hw_params.max_txq_num; txq_id++)
  il_tx_queue_reset(il, txq_id);
}
