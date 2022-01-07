
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netdev_private {int advertising; int phy_addr_external; int autoneg; int duplex; int speed; } ;
struct net_device {int if_port; } ;
struct ethtool_cmd {int port; int supported; int duplex; int speed; int advertising; int autoneg; void* transceiver; int phy_address; } ;


 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_MII ;
 int ADVERTISED_TP ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 scalar_t__ LPA_100FULL ;
 scalar_t__ LPA_100HALF ;
 scalar_t__ LPA_10FULL ;
 int MII_LPA ;



 int SPEED_10 ;
 int SPEED_100 ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_MII ;
 int SUPPORTED_TP ;
 void* XCVR_EXTERNAL ;
 void* XCVR_INTERNAL ;
 int mdio_read (struct net_device*,int ) ;
 scalar_t__ mii_nway_result (int) ;
 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_get_ecmd(struct net_device *dev, struct ethtool_cmd *ecmd)
{
 struct netdev_private *np = netdev_priv(dev);
 u32 tmp;

 ecmd->port = dev->if_port;
 ecmd->speed = np->speed;
 ecmd->duplex = np->duplex;
 ecmd->autoneg = np->autoneg;
 ecmd->advertising = 0;
 if (np->advertising & ADVERTISE_10HALF)
  ecmd->advertising |= ADVERTISED_10baseT_Half;
 if (np->advertising & ADVERTISE_10FULL)
  ecmd->advertising |= ADVERTISED_10baseT_Full;
 if (np->advertising & ADVERTISE_100HALF)
  ecmd->advertising |= ADVERTISED_100baseT_Half;
 if (np->advertising & ADVERTISE_100FULL)
  ecmd->advertising |= ADVERTISED_100baseT_Full;
 ecmd->supported = (SUPPORTED_Autoneg |
  SUPPORTED_10baseT_Half | SUPPORTED_10baseT_Full |
  SUPPORTED_100baseT_Half | SUPPORTED_100baseT_Full |
  SUPPORTED_TP | SUPPORTED_MII | SUPPORTED_FIBRE);
 ecmd->phy_address = np->phy_addr_external;
 switch (ecmd->port) {
 default:
 case 128:
  ecmd->advertising |= ADVERTISED_TP;
  ecmd->transceiver = XCVR_INTERNAL;
  break;
 case 129:
  ecmd->advertising |= ADVERTISED_MII;
  ecmd->transceiver = XCVR_EXTERNAL;
  break;
 case 130:
  ecmd->advertising |= ADVERTISED_FIBRE;
  ecmd->transceiver = XCVR_EXTERNAL;
  break;
 }


 if (ecmd->autoneg == AUTONEG_ENABLE) {
  ecmd->advertising |= ADVERTISED_Autoneg;
  tmp = mii_nway_result(
   np->advertising & mdio_read(dev, MII_LPA));
  if (tmp == LPA_100FULL || tmp == LPA_100HALF)
   ecmd->speed = SPEED_100;
  else
   ecmd->speed = SPEED_10;
  if (tmp == LPA_100FULL || tmp == LPA_10FULL)
   ecmd->duplex = DUPLEX_FULL;
  else
   ecmd->duplex = DUPLEX_HALF;
 }



 return 0;
}
