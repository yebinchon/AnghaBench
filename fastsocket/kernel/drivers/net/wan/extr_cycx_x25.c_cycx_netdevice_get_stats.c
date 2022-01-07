
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct cycx_x25_channel {struct net_device_stats ifstats; } ;


 struct cycx_x25_channel* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *cycx_netdevice_get_stats(struct net_device *dev)
{
 struct cycx_x25_channel *chan = netdev_priv(dev);

 return chan ? &chan->ifstats : ((void*)0);
}
