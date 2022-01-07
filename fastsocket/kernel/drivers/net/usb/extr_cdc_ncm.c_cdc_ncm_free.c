
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdc_ncm_ctx {int * tx_curr_skb; int * tx_rem_skb; } ;


 int dev_kfree_skb_any (int *) ;
 int kfree (struct cdc_ncm_ctx*) ;

__attribute__((used)) static void cdc_ncm_free(struct cdc_ncm_ctx *ctx)
{
 if (ctx == ((void*)0))
  return;

 if (ctx->tx_rem_skb != ((void*)0)) {
  dev_kfree_skb_any(ctx->tx_rem_skb);
  ctx->tx_rem_skb = ((void*)0);
 }

 if (ctx->tx_curr_skb != ((void*)0)) {
  dev_kfree_skb_any(ctx->tx_curr_skb);
  ctx->tx_curr_skb = ((void*)0);
 }

 kfree(ctx);
}
