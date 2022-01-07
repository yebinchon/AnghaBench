
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_txq_num; } ;
struct il_priv {int cmd_queue; int scd_bc_tbls; int kw; TYPE_1__ hw_params; scalar_t__ txq; } ;


 int il4965_free_dma_ptr (struct il_priv*,int *) ;
 int il_cmd_queue_free (struct il_priv*) ;
 int il_free_txq_mem (struct il_priv*) ;
 int il_tx_queue_free (struct il_priv*,int) ;

void
il4965_hw_txq_ctx_free(struct il_priv *il)
{
 int txq_id;


 if (il->txq) {
  for (txq_id = 0; txq_id < il->hw_params.max_txq_num; txq_id++)
   if (txq_id == il->cmd_queue)
    il_cmd_queue_free(il);
   else
    il_tx_queue_free(il, txq_id);
 }
 il4965_free_dma_ptr(il, &il->kw);

 il4965_free_dma_ptr(il, &il->scd_bc_tbls);


 il_free_txq_mem(il);
}
