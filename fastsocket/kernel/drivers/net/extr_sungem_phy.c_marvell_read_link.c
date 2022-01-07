
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {int pause; int duplex; int speed; scalar_t__ autoneg; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int EAGAIN ;
 int MII_M1011_PHY_SPEC_STATUS ;
 int MII_M1011_PHY_SPEC_STATUS_100 ;
 int MII_M1011_PHY_SPEC_STATUS_1000 ;
 int MII_M1011_PHY_SPEC_STATUS_FULLDUPLEX ;
 int MII_M1011_PHY_SPEC_STATUS_RESOLVED ;
 int MII_M1011_PHY_SPEC_STATUS_RX_PAUSE ;
 int MII_M1011_PHY_SPEC_STATUS_TX_PAUSE ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int phy_read (struct mii_phy*,int ) ;

__attribute__((used)) static int marvell_read_link(struct mii_phy *phy)
{
 u16 status, pmask;

 if (phy->autoneg) {
  status = phy_read(phy, MII_M1011_PHY_SPEC_STATUS);
  if ((status & MII_M1011_PHY_SPEC_STATUS_RESOLVED) == 0)
   return -EAGAIN;
  if (status & MII_M1011_PHY_SPEC_STATUS_1000)
   phy->speed = SPEED_1000;
  else if (status & MII_M1011_PHY_SPEC_STATUS_100)
   phy->speed = SPEED_100;
  else
   phy->speed = SPEED_10;
  if (status & MII_M1011_PHY_SPEC_STATUS_FULLDUPLEX)
   phy->duplex = DUPLEX_FULL;
  else
   phy->duplex = DUPLEX_HALF;
  pmask = MII_M1011_PHY_SPEC_STATUS_TX_PAUSE |
   MII_M1011_PHY_SPEC_STATUS_RX_PAUSE;
  phy->pause = (status & pmask) == pmask;
 }




 return 0;
}
