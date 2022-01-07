
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct simeth_local {struct net_device_stats stats; } ;
struct net_device {int dummy; } ;


 struct simeth_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *
simeth_get_stats(struct net_device *dev)
{
 struct simeth_local *local = netdev_priv(dev);

 return &local->stats;
}
