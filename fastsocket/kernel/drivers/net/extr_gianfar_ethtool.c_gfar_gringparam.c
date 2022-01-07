
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gfar_private {int tx_ring_size; int rx_ring_size; } ;
struct ethtool_ringparam {int tx_pending; int rx_jumbo_pending; int rx_mini_pending; int rx_pending; int tx_max_pending; void* rx_jumbo_max_pending; void* rx_mini_max_pending; void* rx_max_pending; } ;


 void* GFAR_RX_MAX_RING_SIZE ;
 int GFAR_TX_MAX_RING_SIZE ;
 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gfar_gringparam(struct net_device *dev, struct ethtool_ringparam *rvals)
{
 struct gfar_private *priv = netdev_priv(dev);

 rvals->rx_max_pending = GFAR_RX_MAX_RING_SIZE;
 rvals->rx_mini_max_pending = GFAR_RX_MAX_RING_SIZE;
 rvals->rx_jumbo_max_pending = GFAR_RX_MAX_RING_SIZE;
 rvals->tx_max_pending = GFAR_TX_MAX_RING_SIZE;




 rvals->rx_pending = priv->rx_ring_size;
 rvals->rx_mini_pending = priv->rx_ring_size;
 rvals->rx_jumbo_pending = priv->rx_ring_size;
 rvals->tx_pending = priv->tx_ring_size;
}
