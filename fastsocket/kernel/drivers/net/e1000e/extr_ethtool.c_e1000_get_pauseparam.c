
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;
struct TYPE_2__ {scalar_t__ current_mode; } ;
struct e1000_hw {TYPE_1__ fc; } ;
struct e1000_adapter {scalar_t__ fc_autoneg; struct e1000_hw hw; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 scalar_t__ e1000_fc_full ;
 scalar_t__ e1000_fc_rx_pause ;
 scalar_t__ e1000_fc_tx_pause ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e1000_get_pauseparam(struct net_device *netdev,
     struct ethtool_pauseparam *pause)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 pause->autoneg =
     (adapter->fc_autoneg ? AUTONEG_ENABLE : AUTONEG_DISABLE);

 if (hw->fc.current_mode == e1000_fc_rx_pause) {
  pause->rx_pause = 1;
 } else if (hw->fc.current_mode == e1000_fc_tx_pause) {
  pause->tx_pause = 1;
 } else if (hw->fc.current_mode == e1000_fc_full) {
  pause->rx_pause = 1;
  pause->tx_pause = 1;
 }
}
