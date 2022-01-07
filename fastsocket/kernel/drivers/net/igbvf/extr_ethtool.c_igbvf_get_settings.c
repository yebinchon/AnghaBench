
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {struct e1000_hw hw; } ;
struct ethtool_cmd {int port; int duplex; int autoneg; int transceiver; int advertising; int supported; } ;


 int ADVERTISED_1000baseT_Full ;
 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int E1000_STATUS_FD ;
 int E1000_STATUS_LU ;
 int E1000_STATUS_SPEED_100 ;
 int E1000_STATUS_SPEED_1000 ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int STATUS ;
 int SUPPORTED_1000baseT_Full ;
 int XCVR_DUMMY1 ;
 int er32 (int ) ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igbvf_get_settings(struct net_device *netdev,
                              struct ethtool_cmd *ecmd)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 status;

 ecmd->supported = SUPPORTED_1000baseT_Full;

 ecmd->advertising = ADVERTISED_1000baseT_Full;

 ecmd->port = -1;
 ecmd->transceiver = XCVR_DUMMY1;

 status = er32(STATUS);
 if (status & E1000_STATUS_LU) {
  if (status & E1000_STATUS_SPEED_1000)
   ethtool_cmd_speed_set(ecmd, SPEED_1000);
  else if (status & E1000_STATUS_SPEED_100)
   ethtool_cmd_speed_set(ecmd, SPEED_100);
  else
   ethtool_cmd_speed_set(ecmd, SPEED_10);

  if (status & E1000_STATUS_FD)
   ecmd->duplex = DUPLEX_FULL;
  else
   ecmd->duplex = DUPLEX_HALF;
 } else {
  ethtool_cmd_speed_set(ecmd, -1);
  ecmd->duplex = -1;
 }

 ecmd->autoneg = AUTONEG_DISABLE;

 return 0;
}
