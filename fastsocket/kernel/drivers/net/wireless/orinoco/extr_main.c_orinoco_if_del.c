
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {struct net_device* ndev; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

void orinoco_if_del(struct orinoco_private *priv)
{
 struct net_device *dev = priv->ndev;

 unregister_netdev(dev);
 free_netdev(dev);
}
