
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igbvf_ring {int count; } ;
struct igbvf_adapter {struct igbvf_ring* rx_ring; struct igbvf_ring* tx_ring; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int IGBVF_MAX_RXD ;
 int IGBVF_MAX_TXD ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void igbvf_get_ringparam(struct net_device *netdev,
                                struct ethtool_ringparam *ring)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct igbvf_ring *tx_ring = adapter->tx_ring;
 struct igbvf_ring *rx_ring = adapter->rx_ring;

 ring->rx_max_pending = IGBVF_MAX_RXD;
 ring->tx_max_pending = IGBVF_MAX_TXD;
 ring->rx_pending = rx_ring->count;
 ring->tx_pending = tx_ring->count;
}
