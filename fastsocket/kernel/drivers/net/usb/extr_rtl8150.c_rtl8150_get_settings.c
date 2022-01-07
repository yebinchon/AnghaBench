
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; scalar_t__ speed; void* duplex; int autoneg; int phy_address; int transceiver; int port; } ;
struct TYPE_4__ {int phy; } ;
typedef TYPE_1__ rtl8150_t ;


 int ANLP ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int BMCR ;
 short BMCR_ANENABLE ;
 short BMCR_FULLDPLX ;
 short BMCR_SPEED100 ;
 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 short LPA_100FULL ;
 short LPA_100HALF ;
 short LPA_10FULL ;
 int PORT_TP ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_MII ;
 int SUPPORTED_TP ;
 int XCVR_INTERNAL ;
 int get_registers (TYPE_1__*,int ,int,short*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtl8150_get_settings(struct net_device *netdev, struct ethtool_cmd *ecmd)
{
 rtl8150_t *dev = netdev_priv(netdev);
 short lpa, bmcr;

 ecmd->supported = (SUPPORTED_10baseT_Half |
     SUPPORTED_10baseT_Full |
     SUPPORTED_100baseT_Half |
     SUPPORTED_100baseT_Full |
     SUPPORTED_Autoneg |
     SUPPORTED_TP | SUPPORTED_MII);
 ecmd->port = PORT_TP;
 ecmd->transceiver = XCVR_INTERNAL;
 ecmd->phy_address = dev->phy;
 get_registers(dev, BMCR, 2, &bmcr);
 get_registers(dev, ANLP, 2, &lpa);
 if (bmcr & BMCR_ANENABLE) {
  ecmd->autoneg = AUTONEG_ENABLE;
  ecmd->speed = (lpa & (LPA_100HALF | LPA_100FULL)) ?
        SPEED_100 : SPEED_10;
  if (ecmd->speed == SPEED_100)
   ecmd->duplex = (lpa & LPA_100FULL) ?
       DUPLEX_FULL : DUPLEX_HALF;
  else
   ecmd->duplex = (lpa & LPA_10FULL) ?
       DUPLEX_FULL : DUPLEX_HALF;
 } else {
  ecmd->autoneg = AUTONEG_DISABLE;
  ecmd->speed = (bmcr & BMCR_SPEED100) ?
      SPEED_100 : SPEED_10;
  ecmd->duplex = (bmcr & BMCR_FULLDPLX) ?
      DUPLEX_FULL : DUPLEX_HALF;
 }
 return 0;
}
