
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct kaweth_device {struct net_device_stats stats; } ;


 struct kaweth_device* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *kaweth_netdev_stats(struct net_device *dev)
{
 struct kaweth_device *kaweth = netdev_priv(dev);
 return &kaweth->stats;
}
