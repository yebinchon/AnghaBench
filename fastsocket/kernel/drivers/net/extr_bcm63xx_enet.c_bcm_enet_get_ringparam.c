
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_max_pending; int tx_max_pending; int tx_pending; int rx_pending; scalar_t__ rx_jumbo_max_pending; scalar_t__ rx_mini_max_pending; } ;
struct bcm_enet_priv {int tx_ring_size; int rx_ring_size; } ;


 struct bcm_enet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bcm_enet_get_ringparam(struct net_device *dev,
       struct ethtool_ringparam *ering)
{
 struct bcm_enet_priv *priv;

 priv = netdev_priv(dev);


 ering->rx_max_pending = 8192;
 ering->tx_max_pending = 8192;
 ering->rx_mini_max_pending = 0;
 ering->rx_jumbo_max_pending = 0;
 ering->rx_pending = priv->rx_ring_size;
 ering->tx_pending = priv->tx_ring_size;
}
