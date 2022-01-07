
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct dev_priv {struct net_device_stats stats; } ;


 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *am79c961_getstats (struct net_device *dev)
{
 struct dev_priv *priv = netdev_priv(dev);
 return &priv->stats;
}
