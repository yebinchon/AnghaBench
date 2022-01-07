
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int advertising; int speed; int duplex; int autoneg; int transceiver; scalar_t__ phy_address; int port; } ;
struct atl1_hw {scalar_t__ media_type; } ;
struct atl1_adapter {int netdev; struct atl1_hw hw; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_TP ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 scalar_t__ FULL_DUPLEX ;
 scalar_t__ MEDIA_TYPE_1000M_FULL ;
 scalar_t__ MEDIA_TYPE_AUTO_SENSOR ;
 int PORT_TP ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_TP ;
 int XCVR_INTERNAL ;
 int atl1_get_speed_and_duplex (struct atl1_hw*,scalar_t__*,scalar_t__*) ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (int ) ;

__attribute__((used)) static int atl1_get_settings(struct net_device *netdev,
 struct ethtool_cmd *ecmd)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);
 struct atl1_hw *hw = &adapter->hw;

 ecmd->supported = (SUPPORTED_10baseT_Half |
      SUPPORTED_10baseT_Full |
      SUPPORTED_100baseT_Half |
      SUPPORTED_100baseT_Full |
      SUPPORTED_1000baseT_Full |
      SUPPORTED_Autoneg | SUPPORTED_TP);
 ecmd->advertising = ADVERTISED_TP;
 if (hw->media_type == MEDIA_TYPE_AUTO_SENSOR ||
     hw->media_type == MEDIA_TYPE_1000M_FULL) {
  ecmd->advertising |= ADVERTISED_Autoneg;
  if (hw->media_type == MEDIA_TYPE_AUTO_SENSOR) {
   ecmd->advertising |= ADVERTISED_Autoneg;
   ecmd->advertising |=
       (ADVERTISED_10baseT_Half |
        ADVERTISED_10baseT_Full |
        ADVERTISED_100baseT_Half |
        ADVERTISED_100baseT_Full |
        ADVERTISED_1000baseT_Full);
  } else
   ecmd->advertising |= (ADVERTISED_1000baseT_Full);
 }
 ecmd->port = PORT_TP;
 ecmd->phy_address = 0;
 ecmd->transceiver = XCVR_INTERNAL;

 if (netif_carrier_ok(adapter->netdev)) {
  u16 link_speed, link_duplex;
  atl1_get_speed_and_duplex(hw, &link_speed, &link_duplex);
  ecmd->speed = link_speed;
  if (link_duplex == FULL_DUPLEX)
   ecmd->duplex = DUPLEX_FULL;
  else
   ecmd->duplex = DUPLEX_HALF;
 } else {
  ecmd->speed = -1;
  ecmd->duplex = -1;
 }
 if (hw->media_type == MEDIA_TYPE_AUTO_SENSOR ||
     hw->media_type == MEDIA_TYPE_1000M_FULL)
  ecmd->autoneg = AUTONEG_ENABLE;
 else
  ecmd->autoneg = AUTONEG_DISABLE;

 return 0;
}
