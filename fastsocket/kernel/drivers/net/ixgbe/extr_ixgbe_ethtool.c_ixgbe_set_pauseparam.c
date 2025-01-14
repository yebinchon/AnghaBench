
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_fc_info {int disable_fc_autoneg; int requested_mode; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {struct ixgbe_fc_info fc; TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; struct ixgbe_hw hw; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 int IXGBE_FLAG_DCB_ENABLED ;
 int ixgbe_device_supports_autoneg_fc (struct ixgbe_hw*) ;
 int ixgbe_fc_full ;
 int ixgbe_fc_none ;
 int ixgbe_fc_rx_pause ;
 int ixgbe_fc_tx_pause ;
 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_reinit_locked (struct ixgbe_adapter*) ;
 int ixgbe_reset (struct ixgbe_adapter*) ;
 scalar_t__ memcmp (struct ixgbe_fc_info*,struct ixgbe_fc_info*,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int ixgbe_set_pauseparam(struct net_device *netdev,
                                struct ethtool_pauseparam *pause)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbe_fc_info fc = hw->fc;


 if ((hw->mac.type == ixgbe_mac_82598EB) &&
     (adapter->flags & IXGBE_FLAG_DCB_ENABLED))
  return -EINVAL;


 if ((pause->autoneg == AUTONEG_ENABLE) &&
     !ixgbe_device_supports_autoneg_fc(hw))
  return -EINVAL;

 fc.disable_fc_autoneg = (pause->autoneg != AUTONEG_ENABLE);

 if ((pause->rx_pause && pause->tx_pause) || pause->autoneg)
  fc.requested_mode = ixgbe_fc_full;
 else if (pause->rx_pause && !pause->tx_pause)
  fc.requested_mode = ixgbe_fc_rx_pause;
 else if (!pause->rx_pause && pause->tx_pause)
  fc.requested_mode = ixgbe_fc_tx_pause;
 else
  fc.requested_mode = ixgbe_fc_none;


 if (memcmp(&fc, &hw->fc, sizeof(struct ixgbe_fc_info))) {
  hw->fc = fc;
  if (netif_running(netdev))
   ixgbe_reinit_locked(adapter);
  else
   ixgbe_reset(adapter);
 }

 return 0;
}
