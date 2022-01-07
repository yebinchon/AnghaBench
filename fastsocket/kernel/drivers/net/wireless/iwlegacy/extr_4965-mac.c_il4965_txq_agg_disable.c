
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct il_priv {TYPE_3__* txq; TYPE_1__* cfg; } ;
struct TYPE_5__ {int read_ptr; int write_ptr; } ;
struct TYPE_6__ {TYPE_2__ q; } ;
struct TYPE_4__ {int num_of_ampdu_queues; } ;


 int EINVAL ;
 int IL49_FIRST_AMPDU_QUEUE ;
 int IL49_SCD_INTERRUPT_MASK ;
 int IL49_SCD_QUEUECHAIN_SEL ;
 int IL_WARN (char*,int,int,int) ;
 int il4965_set_wr_ptrs (struct il_priv*,int,int) ;
 int il4965_tx_queue_set_status (struct il_priv*,TYPE_3__*,int ,int ) ;
 int il4965_tx_queue_stop_scheduler (struct il_priv*,int) ;
 int il_clear_bits_prph (struct il_priv*,int ,int) ;
 int il_txq_ctx_deactivate (struct il_priv*,int) ;

__attribute__((used)) static int
il4965_txq_agg_disable(struct il_priv *il, u16 txq_id, u16 ssn_idx, u8 tx_fifo)
{
 if ((IL49_FIRST_AMPDU_QUEUE > txq_id) ||
     (IL49_FIRST_AMPDU_QUEUE +
      il->cfg->num_of_ampdu_queues <= txq_id)) {
  IL_WARN("queue number out of range: %d, must be %d to %d\n",
   txq_id, IL49_FIRST_AMPDU_QUEUE,
   IL49_FIRST_AMPDU_QUEUE +
   il->cfg->num_of_ampdu_queues - 1);
  return -EINVAL;
 }

 il4965_tx_queue_stop_scheduler(il, txq_id);

 il_clear_bits_prph(il, IL49_SCD_QUEUECHAIN_SEL, (1 << txq_id));

 il->txq[txq_id].q.read_ptr = (ssn_idx & 0xff);
 il->txq[txq_id].q.write_ptr = (ssn_idx & 0xff);

 il4965_set_wr_ptrs(il, txq_id, ssn_idx);

 il_clear_bits_prph(il, IL49_SCD_INTERRUPT_MASK, (1 << txq_id));
 il_txq_ctx_deactivate(il, txq_id);
 il4965_tx_queue_set_status(il, &il->txq[txq_id], tx_fifo, 0);

 return 0;
}
