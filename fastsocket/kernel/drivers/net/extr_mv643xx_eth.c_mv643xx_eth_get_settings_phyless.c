
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv643xx_eth_private {int dummy; } ;
struct ethtool_cmd {int speed; int maxtxpkt; int maxrxpkt; int autoneg; int transceiver; scalar_t__ phy_address; int port; int duplex; int advertising; int supported; } ;


 int ADVERTISED_MII ;
 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int FULL_DUPLEX ;
 int PORT_MII ;



 int PORT_SPEED_MASK ;
 int PORT_STATUS ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SUPPORTED_MII ;
 int XCVR_INTERNAL ;
 int rdlp (struct mv643xx_eth_private*,int ) ;

__attribute__((used)) static int
mv643xx_eth_get_settings_phyless(struct mv643xx_eth_private *mp,
     struct ethtool_cmd *cmd)
{
 u32 port_status;

 port_status = rdlp(mp, PORT_STATUS);

 cmd->supported = SUPPORTED_MII;
 cmd->advertising = ADVERTISED_MII;
 switch (port_status & PORT_SPEED_MASK) {
 case 130:
  cmd->speed = SPEED_10;
  break;
 case 129:
  cmd->speed = SPEED_100;
  break;
 case 128:
  cmd->speed = SPEED_1000;
  break;
 default:
  cmd->speed = -1;
  break;
 }
 cmd->duplex = (port_status & FULL_DUPLEX) ? DUPLEX_FULL : DUPLEX_HALF;
 cmd->port = PORT_MII;
 cmd->phy_address = 0;
 cmd->transceiver = XCVR_INTERNAL;
 cmd->autoneg = AUTONEG_DISABLE;
 cmd->maxtxpkt = 1;
 cmd->maxrxpkt = 1;

 return 0;
}
