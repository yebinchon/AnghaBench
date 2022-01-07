
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int flags; } ;
struct bnx2x {scalar_t__ state; int sp_rtnl_task; int sp_rtnl_state; int sp_state; int rx_mode; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ flags; } ;


 int BNX2X_FILTER_RX_MODE_PENDING ;
 int BNX2X_FILTER_RX_MODE_SCHED ;
 scalar_t__ BNX2X_MAX_MULTICAST ;
 int BNX2X_RX_MODE_ALLMULTI ;
 int BNX2X_RX_MODE_NONE ;
 int BNX2X_RX_MODE_NORMAL ;
 int BNX2X_RX_MODE_PROMISC ;
 int BNX2X_SP_RTNL_VFPF_MCAST ;
 int BNX2X_SP_RTNL_VFPF_STORM_RX_MODE ;
 scalar_t__ BNX2X_STATE_OPEN ;
 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 int DP (int ,char*,scalar_t__) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ IS_MF_ISCSI_SD (struct bnx2x*) ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int NETIF_MSG_IFUP ;
 scalar_t__ bnx2x_set_mc_list (struct bnx2x*) ;
 int bnx2x_set_storm_rx_mode (struct bnx2x*) ;
 scalar_t__ bnx2x_set_uc_list (struct bnx2x*) ;
 scalar_t__ netdev_mc_count (struct net_device*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;
 scalar_t__ test_bit (int ,int *) ;

void bnx2x_set_rx_mode(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);
 u32 rx_mode = BNX2X_RX_MODE_NORMAL;

 if (bp->state != BNX2X_STATE_OPEN) {
  DP(NETIF_MSG_IFUP, "state is %x, returning\n", bp->state);
  return;
 }

 DP(NETIF_MSG_IFUP, "dev->flags = %x\n", bp->dev->flags);

 if (dev->flags & IFF_PROMISC)
  rx_mode = BNX2X_RX_MODE_PROMISC;
 else if ((dev->flags & IFF_ALLMULTI) ||
   ((netdev_mc_count(dev) > BNX2X_MAX_MULTICAST) &&
    CHIP_IS_E1(bp)))
  rx_mode = BNX2X_RX_MODE_ALLMULTI;
 else {
  if (IS_PF(bp)) {

   if (bnx2x_set_mc_list(bp) < 0)
    rx_mode = BNX2X_RX_MODE_ALLMULTI;

   if (bnx2x_set_uc_list(bp) < 0)
    rx_mode = BNX2X_RX_MODE_PROMISC;
  } else {





   smp_mb__before_clear_bit();
   set_bit(BNX2X_SP_RTNL_VFPF_MCAST,
    &bp->sp_rtnl_state);
   smp_mb__after_clear_bit();
   schedule_delayed_work(&bp->sp_rtnl_task, 0);
  }
 }

 bp->rx_mode = rx_mode;

 if (IS_MF_ISCSI_SD(bp))
  bp->rx_mode = BNX2X_RX_MODE_NONE;


 if (test_bit(BNX2X_FILTER_RX_MODE_PENDING, &bp->sp_state)) {
  set_bit(BNX2X_FILTER_RX_MODE_SCHED, &bp->sp_state);
  return;
 }

 if (IS_PF(bp)) {
  bnx2x_set_storm_rx_mode(bp);
 } else {





  smp_mb__before_clear_bit();
  set_bit(BNX2X_SP_RTNL_VFPF_STORM_RX_MODE,
   &bp->sp_rtnl_state);
  smp_mb__after_clear_bit();
  schedule_delayed_work(&bp->sp_rtnl_task, 0);
 }
}
