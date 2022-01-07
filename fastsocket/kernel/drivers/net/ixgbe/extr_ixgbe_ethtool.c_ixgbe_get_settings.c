
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int (* check_link ) (struct ixgbe_hw*,int*,int*,int) ;int (* get_link_capabilities ) (struct ixgbe_hw*,int*,int*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int autoneg_advertised; int type; int sfp_type; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
struct ethtool_cmd {int duplex; void* port; int advertising; int supported; int transceiver; int autoneg; } ;
typedef int ixgbe_link_speed ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;



 void* PORT_DA ;
 void* PORT_FIBRE ;
 void* PORT_NONE ;
 void* PORT_OTHER ;
 void* PORT_TP ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int XCVR_EXTERNAL ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int*,int*) ;
 int stub2 (struct ixgbe_hw*,int*,int*,int) ;

__attribute__((used)) static int ixgbe_get_settings(struct net_device *netdev,
                              struct ethtool_cmd *ecmd)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 ixgbe_link_speed supported_link;
 u32 link_speed = 0;
 bool autoneg = 0;
 bool link_up;

 hw->mac.ops.get_link_capabilities(hw, &supported_link, &autoneg);


 if (supported_link & 159)
  ecmd->supported |= SUPPORTED_10000baseT_Full;
 if (supported_link & 158)
  ecmd->supported |= SUPPORTED_1000baseT_Full;
 if (supported_link & 160)
  ecmd->supported |= SUPPORTED_100baseT_Full;


 if (hw->phy.autoneg_advertised) {
  if (hw->phy.autoneg_advertised & 160)
   ecmd->advertising |= ADVERTISED_100baseT_Full;
  if (hw->phy.autoneg_advertised & 159)
   ecmd->advertising |= ADVERTISED_10000baseT_Full;
  if (hw->phy.autoneg_advertised & 158)
   ecmd->advertising |= ADVERTISED_1000baseT_Full;
 } else {

  if (supported_link & 159)
   ecmd->advertising |= ADVERTISED_10000baseT_Full;
  if (supported_link & 158)
   ecmd->advertising |= ADVERTISED_1000baseT_Full;
  if (supported_link & 160)
   ecmd->advertising |= ADVERTISED_100baseT_Full;
 }

 if (autoneg) {
  ecmd->supported |= SUPPORTED_Autoneg;
  ecmd->advertising |= ADVERTISED_Autoneg;
  ecmd->autoneg = AUTONEG_ENABLE;
 } else
  ecmd->autoneg = AUTONEG_DISABLE;

 ecmd->transceiver = XCVR_EXTERNAL;


 switch (adapter->hw.phy.type) {
 case 145:
 case 157:
 case 156:
  ecmd->supported |= SUPPORTED_TP;
  ecmd->advertising |= ADVERTISED_TP;
  ecmd->port = PORT_TP;
  break;
 case 153:
  ecmd->supported |= SUPPORTED_FIBRE;
  ecmd->advertising |= ADVERTISED_FIBRE;
  ecmd->port = PORT_FIBRE;
  break;
 case 154:
 case 149:
 case 148:
 case 151:
 case 152:
 case 150:
 case 147:

  switch (adapter->hw.phy.sfp_type) {
  case 136:
  case 135:
  case 134:
   ecmd->supported |= SUPPORTED_FIBRE;
   ecmd->advertising |= ADVERTISED_FIBRE;
   ecmd->port = PORT_DA;
   break;
  case 131:
  case 133:
  case 130:
  case 129:
  case 138:
  case 137:
  case 140:
  case 139:
   ecmd->supported |= SUPPORTED_FIBRE;
   ecmd->advertising |= ADVERTISED_FIBRE;
   ecmd->port = PORT_FIBRE;
   break;
  case 132:
   ecmd->supported |= SUPPORTED_FIBRE;
   ecmd->advertising |= ADVERTISED_FIBRE;
   ecmd->port = PORT_NONE;
   break;
  case 142:
  case 141:
   ecmd->supported |= SUPPORTED_TP;
   ecmd->advertising |= ADVERTISED_TP;
   ecmd->port = PORT_TP;
   break;
  case 128:
  default:
   ecmd->supported |= SUPPORTED_FIBRE;
   ecmd->advertising |= ADVERTISED_FIBRE;
   ecmd->port = PORT_OTHER;
   break;
  }
  break;
 case 143:
  ecmd->supported |= SUPPORTED_FIBRE;
  ecmd->advertising |= ADVERTISED_FIBRE;
  ecmd->port = PORT_NONE;
  break;
 case 144:
 case 155:
 case 146:
 default:
  ecmd->supported |= SUPPORTED_FIBRE;
  ecmd->advertising |= ADVERTISED_FIBRE;
  ecmd->port = PORT_OTHER;
  break;
 }

 hw->mac.ops.check_link(hw, &link_speed, &link_up, 0);
 if (link_up) {
  switch (link_speed) {
  case 159:
   ethtool_cmd_speed_set(ecmd, SPEED_10000);
   break;
  case 158:
   ethtool_cmd_speed_set(ecmd, SPEED_1000);
   break;
  case 160:
   ethtool_cmd_speed_set(ecmd, SPEED_100);
   break;
  default:
   break;
  }
  ecmd->duplex = DUPLEX_FULL;
 } else {
  ethtool_cmd_speed_set(ecmd, -1);
  ecmd->duplex = -1;
 }

 return 0;
}
