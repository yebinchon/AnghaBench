
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct il_tx_queue {int q; scalar_t__ need_update; int meta; } ;
struct il_priv {size_t cmd_queue; TYPE_1__* ops; struct il_tx_queue* txq; } ;
struct il_cmd_meta {int dummy; } ;
struct TYPE_2__ {int (* txq_init ) (struct il_priv*,struct il_tx_queue*) ;} ;


 int TFD_CMD_SLOTS ;
 int TFD_TX_CMD_SLOTS ;
 int il_queue_init (struct il_priv*,int *,int,size_t) ;
 int memset (int ,int ,int) ;
 int stub1 (struct il_priv*,struct il_tx_queue*) ;

void
il_tx_queue_reset(struct il_priv *il, u32 txq_id)
{
 int slots, actual_slots;
 struct il_tx_queue *txq = &il->txq[txq_id];

 if (txq_id == il->cmd_queue) {
  slots = TFD_CMD_SLOTS;
  actual_slots = TFD_CMD_SLOTS + 1;
 } else {
  slots = TFD_TX_CMD_SLOTS;
  actual_slots = TFD_TX_CMD_SLOTS;
 }

 memset(txq->meta, 0, sizeof(struct il_cmd_meta) * actual_slots);
 txq->need_update = 0;


 il_queue_init(il, &txq->q, slots, txq_id);


 il->ops->txq_init(il, txq);
}
