
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct libipw_txb {int payload_size; } ;
struct ipw_priv {int lock; int prom_net_dev; } ;
typedef scalar_t__ netdev_tx_t ;


 int IPW_DEBUG_TX (char*,int ) ;
 scalar_t__ NETDEV_TX_OK ;
 int __ipw_led_activity_on (struct ipw_priv*) ;
 int ipw_handle_promiscuous_tx (struct ipw_priv*,struct libipw_txb*) ;
 scalar_t__ ipw_tx_skb (struct ipw_priv*,struct libipw_txb*,int) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;
 scalar_t__ rtap_iface ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t ipw_net_hard_start_xmit(struct libipw_txb *txb,
        struct net_device *dev, int pri)
{
 struct ipw_priv *priv = libipw_priv(dev);
 unsigned long flags;
 netdev_tx_t ret;

 IPW_DEBUG_TX("dev->xmit(%d bytes)\n", txb->payload_size);
 spin_lock_irqsave(&priv->lock, flags);






 ret = ipw_tx_skb(priv, txb, pri);
 if (ret == NETDEV_TX_OK)
  __ipw_led_activity_on(priv);
 spin_unlock_irqrestore(&priv->lock, flags);

 return ret;
}
