
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct w90p910_ether {struct net_device_stats stats; } ;
struct net_device {int dummy; } ;


 struct w90p910_ether* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *w90p910_ether_stats(struct net_device *dev)
{
 struct w90p910_ether *ether;

 ether = netdev_priv(dev);

 return &ether->stats;
}
