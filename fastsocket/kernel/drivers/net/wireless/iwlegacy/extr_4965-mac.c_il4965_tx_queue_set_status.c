
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct il_tx_queue {int sched_retry; TYPE_1__ q; } ;
struct il_priv {int txq_ctx_active_msk; } ;


 int D_INFO (char*,char*,char*,int,int) ;
 int IL49_SCD_QUEUE_STATUS_BITS (int) ;
 int IL49_SCD_QUEUE_STTS_REG_MSK ;
 int IL49_SCD_QUEUE_STTS_REG_POS_ACTIVE ;
 int IL49_SCD_QUEUE_STTS_REG_POS_SCD_ACK ;
 int IL49_SCD_QUEUE_STTS_REG_POS_TXF ;
 int IL49_SCD_QUEUE_STTS_REG_POS_WSL ;
 int il_wr_prph (struct il_priv*,int ,int) ;
 scalar_t__ test_bit (int,int *) ;

void
il4965_tx_queue_set_status(struct il_priv *il, struct il_tx_queue *txq,
      int tx_fifo_id, int scd_retry)
{
 int txq_id = txq->q.id;


 int active = test_bit(txq_id, &il->txq_ctx_active_msk) ? 1 : 0;


 il_wr_prph(il, IL49_SCD_QUEUE_STATUS_BITS(txq_id),
     (active << IL49_SCD_QUEUE_STTS_REG_POS_ACTIVE) |
     (tx_fifo_id << IL49_SCD_QUEUE_STTS_REG_POS_TXF) |
     (scd_retry << IL49_SCD_QUEUE_STTS_REG_POS_WSL) |
     (scd_retry << IL49_SCD_QUEUE_STTS_REG_POS_SCD_ACK) |
     IL49_SCD_QUEUE_STTS_REG_MSK);

 txq->sched_retry = scd_retry;

 D_INFO("%s %s Queue %d on AC %d\n", active ? "Activate" : "Deactivate",
        scd_retry ? "BA" : "AC", txq_id, tx_fifo_id);
}
