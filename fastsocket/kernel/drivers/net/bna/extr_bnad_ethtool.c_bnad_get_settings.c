
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int duplex; scalar_t__ maxrxpkt; scalar_t__ maxtxpkt; int transceiver; scalar_t__ phy_address; int port; int advertising; int supported; int autoneg; } ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_FIBRE ;
 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int PORT_FIBRE ;
 int SPEED_10000 ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_FIBRE ;
 int XCVR_EXTERNAL ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int
bnad_get_settings(struct net_device *netdev, struct ethtool_cmd *cmd)
{
 cmd->supported = SUPPORTED_10000baseT_Full;
 cmd->advertising = ADVERTISED_10000baseT_Full;
 cmd->autoneg = AUTONEG_DISABLE;
 cmd->supported |= SUPPORTED_FIBRE;
 cmd->advertising |= ADVERTISED_FIBRE;
 cmd->port = PORT_FIBRE;
 cmd->phy_address = 0;

 if (netif_carrier_ok(netdev)) {
  ethtool_cmd_speed_set(cmd, SPEED_10000);
  cmd->duplex = DUPLEX_FULL;
 } else {
  ethtool_cmd_speed_set(cmd, -1);
  cmd->duplex = -1;
 }
 cmd->transceiver = XCVR_EXTERNAL;
 cmd->maxtxpkt = 0;
 cmd->maxrxpkt = 0;

 return 0;
}
