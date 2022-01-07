
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ current_mode; int disable_fc_autoneg; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; } ;


 scalar_t__ ixgbe_device_supports_autoneg_fc (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_fc_full ;
 scalar_t__ ixgbe_fc_rx_pause ;
 scalar_t__ ixgbe_fc_tx_pause ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbe_get_pauseparam(struct net_device *netdev,
                                 struct ethtool_pauseparam *pause)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 if (ixgbe_device_supports_autoneg_fc(hw) &&
     !hw->fc.disable_fc_autoneg)
  pause->autoneg = 1;
 else
  pause->autoneg = 0;

 if (hw->fc.current_mode == ixgbe_fc_rx_pause) {
  pause->rx_pause = 1;
 } else if (hw->fc.current_mode == ixgbe_fc_tx_pause) {
  pause->tx_pause = 1;
 } else if (hw->fc.current_mode == ixgbe_fc_full) {
  pause->rx_pause = 1;
  pause->tx_pause = 1;
 }
}
