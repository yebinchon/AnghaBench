
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device_stats stats; } ;
typedef TYPE_1__ isdn_net_local ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *
isdn_net_get_stats(struct net_device *dev)
{
 isdn_net_local *lp = (isdn_net_local *) netdev_priv(dev);
 return &lp->stats;
}
