
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int advertising; int maxrxpkt; scalar_t__ maxtxpkt; int autoneg; int transceiver; scalar_t__ phy_address; int port; int duplex; int speed; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int PORT_FIBRE ;
 int SPEED_1000 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int XCVR_INTERNAL ;

__attribute__((used)) static int netdev_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 cmd->supported = (SUPPORTED_1000baseT_Full | SUPPORTED_Autoneg |
    SUPPORTED_FIBRE);
 cmd->advertising = (ADVERTISED_1000baseT_Full | ADVERTISED_Autoneg |
    ADVERTISED_FIBRE);
 cmd->speed = SPEED_1000;
 cmd->duplex = DUPLEX_FULL;
 cmd->port = PORT_FIBRE;
 cmd->phy_address = 0;
 cmd->transceiver = XCVR_INTERNAL;
 cmd->autoneg = AUTONEG_ENABLE;
 cmd->maxtxpkt = 0;
 cmd->maxrxpkt = 1;
 return 0;
}
