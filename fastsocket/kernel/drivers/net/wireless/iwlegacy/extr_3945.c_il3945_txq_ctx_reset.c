
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_txq_num; } ;
struct il_priv {TYPE_1__ hw_params; } ;


 int IL_ERR (char*,int) ;
 int il3945_hw_txq_ctx_free (struct il_priv*) ;
 int il3945_tx_reset (struct il_priv*) ;
 int il_alloc_txq_mem (struct il_priv*) ;
 int il_tx_queue_init (struct il_priv*,int) ;

__attribute__((used)) static int
il3945_txq_ctx_reset(struct il_priv *il)
{
 int rc, txq_id;

 il3945_hw_txq_ctx_free(il);


 rc = il_alloc_txq_mem(il);
 if (rc)
  return rc;


 rc = il3945_tx_reset(il);
 if (rc)
  goto error;


 for (txq_id = 0; txq_id < il->hw_params.max_txq_num; txq_id++) {
  rc = il_tx_queue_init(il, txq_id);
  if (rc) {
   IL_ERR("Tx %d queue init failed\n", txq_id);
   goto error;
  }
 }

 return rc;

error:
 il3945_hw_txq_ctx_free(il);
 return rc;
}
