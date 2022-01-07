
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int link_up; } ;
struct bnx2x {int flags; scalar_t__ state; TYPE_1__ link_vars; } ;


 scalar_t__ BNX2X_STATE_OPEN ;
 int MF_FUNC_DIS ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 bnx2x_get_link(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (bp->flags & MF_FUNC_DIS || (bp->state != BNX2X_STATE_OPEN))
  return 0;

 return bp->link_vars.link_up;
}
