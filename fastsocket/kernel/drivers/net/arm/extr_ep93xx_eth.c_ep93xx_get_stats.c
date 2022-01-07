
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct ep93xx_priv {struct net_device_stats stats; } ;


 struct ep93xx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *ep93xx_get_stats(struct net_device *dev)
{
 struct ep93xx_priv *ep = netdev_priv(dev);
 return &(ep->stats);
}
