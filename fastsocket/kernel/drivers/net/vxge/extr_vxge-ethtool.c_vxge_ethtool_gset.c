
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int advertising; int speed; int duplex; int autoneg; int transceiver; int port; } ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_FIBRE ;
 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int PORT_FIBRE ;
 int SPEED_10000 ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_FIBRE ;
 int XCVR_EXTERNAL ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int vxge_ethtool_gset(struct net_device *dev, struct ethtool_cmd *info)
{
 info->supported = (SUPPORTED_10000baseT_Full | SUPPORTED_FIBRE);
 info->advertising = (ADVERTISED_10000baseT_Full | ADVERTISED_FIBRE);
 info->port = PORT_FIBRE;

 info->transceiver = XCVR_EXTERNAL;

 if (netif_carrier_ok(dev)) {
  info->speed = SPEED_10000;
  info->duplex = DUPLEX_FULL;
 } else {
  info->speed = -1;
  info->duplex = -1;
 }

 info->autoneg = AUTONEG_DISABLE;
 return 0;
}
