
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;
struct e1000_tx_ring {int count; } ;
struct e1000_rx_ring {int count; } ;
struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {struct e1000_rx_ring* rx_ring; struct e1000_tx_ring* tx_ring; struct e1000_hw hw; } ;
typedef scalar_t__ e1000_mac_type ;


 int E1000_MAX_82544_RXD ;
 int E1000_MAX_82544_TXD ;
 int E1000_MAX_RXD ;
 int E1000_MAX_TXD ;
 scalar_t__ e1000_82544 ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e1000_get_ringparam(struct net_device *netdev,
    struct ethtool_ringparam *ring)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 e1000_mac_type mac_type = hw->mac_type;
 struct e1000_tx_ring *txdr = adapter->tx_ring;
 struct e1000_rx_ring *rxdr = adapter->rx_ring;

 ring->rx_max_pending = (mac_type < e1000_82544) ? E1000_MAX_RXD :
  E1000_MAX_82544_RXD;
 ring->tx_max_pending = (mac_type < e1000_82544) ? E1000_MAX_TXD :
  E1000_MAX_82544_TXD;
 ring->rx_pending = rxdr->count;
 ring->tx_pending = txdr->count;
}
