
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dev; int stats_lock; int stats_state; int period_task; int sp_task; int timer; int rx_mode; int state; } ;


 int BNX2X_RX_MODE_NONE ;
 int BNX2X_STATE_CLOSING_WAIT4_HALT ;
 int CNIC_CTL_STOP_CMD ;
 scalar_t__ CNIC_LOADED (struct bnx2x*) ;
 int STATS_STATE_DISABLED ;
 int bnx2x_cnic_notify (struct bnx2x*,int ) ;
 int bnx2x_del_all_napi (struct bnx2x*) ;
 int bnx2x_del_all_napi_cnic (struct bnx2x*) ;
 int bnx2x_save_statistics (struct bnx2x*) ;
 int bnx2x_tx_disable (struct bnx2x*) ;
 int cancel_delayed_work (int *) ;
 int del_timer_sync (int *) ;
 int netdev_reset_tc (int ) ;
 int netif_carrier_off (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int bnx2x_eeh_nic_unload(struct bnx2x *bp)
{
 bp->state = BNX2X_STATE_CLOSING_WAIT4_HALT;

 bp->rx_mode = BNX2X_RX_MODE_NONE;

 if (CNIC_LOADED(bp))
  bnx2x_cnic_notify(bp, CNIC_CTL_STOP_CMD);


 bnx2x_tx_disable(bp);

 bnx2x_del_all_napi(bp);
 if (CNIC_LOADED(bp))
  bnx2x_del_all_napi_cnic(bp);
 netdev_reset_tc(bp->dev);

 del_timer_sync(&bp->timer);
 cancel_delayed_work(&bp->sp_task);
 cancel_delayed_work(&bp->period_task);

 spin_lock_bh(&bp->stats_lock);
 bp->stats_state = STATS_STATE_DISABLED;
 spin_unlock_bh(&bp->stats_lock);

 bnx2x_save_statistics(bp);

 netif_carrier_off(bp->dev);

 return 0;
}
