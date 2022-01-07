
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {scalar_t__ state; int dev; } ;


 scalar_t__ BNX2X_STATE_OPEN ;
 scalar_t__ CNIC_LOADED (struct bnx2x*) ;
 int bnx2x_int_enable (struct bnx2x*) ;
 int bnx2x_napi_enable (struct bnx2x*) ;
 int bnx2x_napi_enable_cnic (struct bnx2x*) ;
 scalar_t__ netif_running (int ) ;
 int netif_tx_wake_all_queues (int ) ;

void bnx2x_netif_start(struct bnx2x *bp)
{
 if (netif_running(bp->dev)) {
  bnx2x_napi_enable(bp);
  if (CNIC_LOADED(bp))
   bnx2x_napi_enable_cnic(bp);
  bnx2x_int_enable(bp);
  if (bp->state == BNX2X_STATE_OPEN)
   netif_tx_wake_all_queues(bp->dev);
 }
}
