
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgb_desc_ring {int count; } ;
struct ixgb_adapter {struct ixgb_desc_ring rx_ring; struct ixgb_desc_ring tx_ring; } ;
struct ethtool_ringparam {scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; int tx_pending; int rx_pending; scalar_t__ rx_jumbo_max_pending; scalar_t__ rx_mini_max_pending; int tx_max_pending; int rx_max_pending; } ;


 int MAX_RXD ;
 int MAX_TXD ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
ixgb_get_ringparam(struct net_device *netdev,
  struct ethtool_ringparam *ring)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 struct ixgb_desc_ring *txdr = &adapter->tx_ring;
 struct ixgb_desc_ring *rxdr = &adapter->rx_ring;

 ring->rx_max_pending = MAX_RXD;
 ring->tx_max_pending = MAX_TXD;
 ring->rx_mini_max_pending = 0;
 ring->rx_jumbo_max_pending = 0;
 ring->rx_pending = rxdr->count;
 ring->tx_pending = txdr->count;
 ring->rx_mini_pending = 0;
 ring->rx_jumbo_pending = 0;
}
