
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct ethoc {struct net_device_stats stats; } ;


 struct ethoc* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *ethoc_stats(struct net_device *dev)
{
 struct ethoc *priv = netdev_priv(dev);
 return &priv->stats;
}
