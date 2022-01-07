
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device_stats {int dummy; } ;
struct net_device {int name; int base_addr; } ;
struct TYPE_3__ {struct net_device_stats linux_stats; int mace_stats; } ;
typedef TYPE_1__ mace_private ;


 int DEBUG (int,char*,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int pr_linux_stats (struct net_device_stats*) ;
 int pr_mace_stats (int *) ;
 int update_stats (int ,struct net_device*) ;

__attribute__((used)) static struct net_device_stats *mace_get_stats(struct net_device *dev)
{
  mace_private *lp = netdev_priv(dev);

  update_stats(dev->base_addr, dev);

  DEBUG(1, "%s: updating the statistics.\n", dev->name);
  pr_linux_stats(&lp->linux_stats);
  pr_mace_stats(&lp->mace_stats);

  return &lp->linux_stats;
}
