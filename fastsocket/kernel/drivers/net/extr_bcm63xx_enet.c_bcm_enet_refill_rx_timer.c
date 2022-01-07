
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bcm_enet_priv {int rx_lock; } ;


 int bcm_enet_refill_rx (struct net_device*) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void bcm_enet_refill_rx_timer(unsigned long data)
{
 struct net_device *dev;
 struct bcm_enet_priv *priv;

 dev = (struct net_device *)data;
 priv = netdev_priv(dev);

 spin_lock(&priv->rx_lock);
 bcm_enet_refill_rx((struct net_device *)data);
 spin_unlock(&priv->rx_lock);
}
