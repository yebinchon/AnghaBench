
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2x {int sp_rtnl_task; int sp_rtnl_state; int panic; } ;


 int BNX2X_SP_RTNL_TX_TIMEOUT ;
 int bnx2x_panic () ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;

void bnx2x_tx_timeout(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);






 smp_mb__before_clear_bit();
 set_bit(BNX2X_SP_RTNL_TX_TIMEOUT, &bp->sp_rtnl_state);
 smp_mb__after_clear_bit();


 schedule_delayed_work(&bp->sp_rtnl_task, 0);
}
