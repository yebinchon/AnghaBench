
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc92031_priv {int lock; int tx_timeouts; } ;
struct net_device {int dummy; } ;


 int _sc92031_reset (struct net_device*) ;
 int mmiowb () ;
 struct sc92031_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int sc92031_disable_interrupts (struct net_device*) ;
 int sc92031_enable_interrupts (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sc92031_tx_timeout(struct net_device *dev)
{
 struct sc92031_priv *priv = netdev_priv(dev);


 sc92031_disable_interrupts(dev);

 spin_lock(&priv->lock);

 priv->tx_timeouts++;

 _sc92031_reset(dev);
 mmiowb();

 spin_unlock(&priv->lock);


 sc92031_enable_interrupts(dev);

 if (netif_carrier_ok(dev))
  netif_wake_queue(dev);
}
