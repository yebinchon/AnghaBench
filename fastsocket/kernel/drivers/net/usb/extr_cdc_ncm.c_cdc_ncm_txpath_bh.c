
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdc_ncm_ctx {scalar_t__ tx_timer_pending; int mtx; int * netdev; } ;


 int cdc_ncm_tx_timeout_start (struct cdc_ncm_ctx*) ;
 int netif_tx_lock_bh (int *) ;
 int netif_tx_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int usbnet_start_xmit (int *,int *) ;

__attribute__((used)) static void cdc_ncm_txpath_bh(unsigned long param)
{
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)param;

 spin_lock_bh(&ctx->mtx);
 if (ctx->tx_timer_pending != 0) {
  ctx->tx_timer_pending--;
  cdc_ncm_tx_timeout_start(ctx);
  spin_unlock_bh(&ctx->mtx);
 } else if (ctx->netdev != ((void*)0)) {
  spin_unlock_bh(&ctx->mtx);
  netif_tx_lock_bh(ctx->netdev);
  usbnet_start_xmit(((void*)0), ctx->netdev);
  netif_tx_unlock_bh(ctx->netdev);
 } else {
  spin_unlock_bh(&ctx->mtx);
 }
}
