
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int name; } ;
struct gfar_private {scalar_t__ rx_ring_size; scalar_t__ tx_ring_size; scalar_t__ num_txbdfree; int txlock; int rxlock; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; } ;


 int EINVAL ;
 scalar_t__ GFAR_RX_MAX_RING_SIZE ;
 scalar_t__ GFAR_TX_MAX_RING_SIZE ;
 int IFF_UP ;
 int gfar_clean_rx_ring (struct net_device*,scalar_t__) ;
 int gfar_halt (struct net_device*) ;
 int is_power_of_2 (scalar_t__) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int printk (char*,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int startup_gfar (struct net_device*) ;
 int stop_gfar (struct net_device*) ;

__attribute__((used)) static int gfar_sringparam(struct net_device *dev, struct ethtool_ringparam *rvals)
{
 struct gfar_private *priv = netdev_priv(dev);
 int err = 0;

 if (rvals->rx_pending > GFAR_RX_MAX_RING_SIZE)
  return -EINVAL;

 if (!is_power_of_2(rvals->rx_pending)) {
  printk("%s: Ring sizes must be a power of 2\n",
    dev->name);
  return -EINVAL;
 }

 if (rvals->tx_pending > GFAR_TX_MAX_RING_SIZE)
  return -EINVAL;

 if (!is_power_of_2(rvals->tx_pending)) {
  printk("%s: Ring sizes must be a power of 2\n",
    dev->name);
  return -EINVAL;
 }

 if (dev->flags & IFF_UP) {
  unsigned long flags;



  spin_lock_irqsave(&priv->txlock, flags);
  spin_lock(&priv->rxlock);

  gfar_halt(dev);

  spin_unlock(&priv->rxlock);
  spin_unlock_irqrestore(&priv->txlock, flags);

  gfar_clean_rx_ring(dev, priv->rx_ring_size);


  stop_gfar(dev);
 }


 priv->rx_ring_size = rvals->rx_pending;
 priv->tx_ring_size = rvals->tx_pending;
 priv->num_txbdfree = priv->tx_ring_size;


 if (dev->flags & IFF_UP) {
  err = startup_gfar(dev);
  netif_wake_queue(dev);
 }
 return err;
}
