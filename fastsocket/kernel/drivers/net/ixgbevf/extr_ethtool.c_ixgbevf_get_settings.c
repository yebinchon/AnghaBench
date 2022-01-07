
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* check_link ) (struct ixgbe_hw*,int*,int*,int) ;} ;
struct TYPE_4__ {int get_link_status; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;
struct ethtool_cmd {int port; int duplex; int transceiver; int autoneg; int supported; } ;
typedef int __u32 ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;



 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SUPPORTED_10000baseT_Full ;
 int XCVR_DUMMY1 ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int*,int*,int) ;

__attribute__((used)) static int ixgbevf_get_settings(struct net_device *netdev,
    struct ethtool_cmd *ecmd)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 link_speed = 0;
 bool link_up;

 ecmd->supported = SUPPORTED_10000baseT_Full;
 ecmd->autoneg = AUTONEG_DISABLE;
 ecmd->transceiver = XCVR_DUMMY1;
 ecmd->port = -1;

 hw->mac.get_link_status = 1;
 hw->mac.ops.check_link(hw, &link_speed, &link_up, 0);

 if (link_up) {
  __u32 speed = SPEED_10000;
  switch (link_speed) {
  case 129:
   speed = SPEED_10000;
   break;
  case 128:
   speed = SPEED_1000;
   break;
  case 130:
   speed = SPEED_100;
   break;
  }

  ethtool_cmd_speed_set(ecmd, speed);
  ecmd->duplex = DUPLEX_FULL;
 } else {
  ethtool_cmd_speed_set(ecmd, -1);
  ecmd->duplex = -1;
 }

 return 0;
}
