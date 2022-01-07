
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct net_device {int flags; } ;
struct gfar_private {int device_flags; int bflock; int rx_csum_enable; int rx_ring_size; int txlock; int rxlock; } ;


 int EOPNOTSUPP ;
 int FSL_GIANFAR_DEV_HAS_CSUM ;
 int IFF_UP ;
 int gfar_clean_rx_ring (struct net_device*,int ) ;
 int gfar_halt (struct net_device*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int startup_gfar (struct net_device*) ;
 int stop_gfar (struct net_device*) ;

__attribute__((used)) static int gfar_set_rx_csum(struct net_device *dev, uint32_t data)
{
 struct gfar_private *priv = netdev_priv(dev);
 unsigned long flags;
 int err = 0;

 if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_CSUM))
  return -EOPNOTSUPP;

 if (dev->flags & IFF_UP) {


  spin_lock_irqsave(&priv->txlock, flags);
  spin_lock(&priv->rxlock);

  gfar_halt(dev);

  spin_unlock(&priv->rxlock);
  spin_unlock_irqrestore(&priv->txlock, flags);

  gfar_clean_rx_ring(dev, priv->rx_ring_size);


  stop_gfar(dev);
 }

 spin_lock_irqsave(&priv->bflock, flags);
 priv->rx_csum_enable = data;
 spin_unlock_irqrestore(&priv->bflock, flags);

 if (dev->flags & IFF_UP) {
  err = startup_gfar(dev);
  netif_wake_queue(dev);
 }
 return err;
}
