
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; int dma_addr; } ;
struct il_tx_queue {TYPE_1__ q; } ;
struct il_priv {int dummy; } ;


 int FH49_MEM_CBBC_QUEUE (int) ;
 int il_wr (struct il_priv*,int ,int) ;

int
il4965_hw_tx_queue_init(struct il_priv *il, struct il_tx_queue *txq)
{
 int txq_id = txq->q.id;


 il_wr(il, FH49_MEM_CBBC_QUEUE(txq_id), txq->q.dma_addr >> 8);

 return 0;
}
