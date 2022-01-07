
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; } ;
struct ixpdev_priv {int channel; } ;


 struct ixpdev_priv* netdev_priv (struct net_device*) ;
 int pm3386_get_stats (int ,struct net_device_stats*) ;

__attribute__((used)) static struct net_device_stats *ixpdev_get_stats(struct net_device *dev)
{
 struct ixpdev_priv *ip = netdev_priv(dev);

 pm3386_get_stats(ip->channel, &(dev->stats));

 return &(dev->stats);
}
