
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int poll_timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_tx_lock (struct net_device*) ;
 int netif_tx_unlock (struct net_device*) ;
 scalar_t__ poll_tx (struct ipoib_dev_priv*) ;

__attribute__((used)) static void drain_tx_cq(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 netif_tx_lock(dev);
 while (poll_tx(priv))
  ;

 if (netif_queue_stopped(dev))
  mod_timer(&priv->poll_timer, jiffies + 1);

 netif_tx_unlock(dev);
}
