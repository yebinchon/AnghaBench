
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct orinoco_private {struct net_device_stats stats; } ;
struct net_device {int dummy; } ;


 struct orinoco_private* ndev_priv (struct net_device*) ;

struct net_device_stats *orinoco_get_stats(struct net_device *dev)
{
 struct orinoco_private *priv = ndev_priv(dev);

 return &priv->stats;
}
