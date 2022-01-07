
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; scalar_t__ duplex; int pause; int asym_pause; void* speed; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 scalar_t__ DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_LPA ;
 int MII_M1011_PHY_STATUS ;


 int MII_M1011_PHY_STATUS_FULLDUPLEX ;
 int MII_M1011_PHY_STATUS_SPD_MASK ;
 void* SPEED_10 ;
 void* SPEED_100 ;
 void* SPEED_1000 ;
 int genphy_update_link (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int marvell_read_status(struct phy_device *phydev)
{
 int adv;
 int err;
 int lpa;
 int status = 0;



 err = genphy_update_link(phydev);
 if (err)
  return err;

 if (AUTONEG_ENABLE == phydev->autoneg) {
  status = phy_read(phydev, MII_M1011_PHY_STATUS);
  if (status < 0)
   return status;

  lpa = phy_read(phydev, MII_LPA);
  if (lpa < 0)
   return lpa;

  adv = phy_read(phydev, MII_ADVERTISE);
  if (adv < 0)
   return adv;

  lpa &= adv;

  if (status & MII_M1011_PHY_STATUS_FULLDUPLEX)
   phydev->duplex = DUPLEX_FULL;
  else
   phydev->duplex = DUPLEX_HALF;

  status = status & MII_M1011_PHY_STATUS_SPD_MASK;
  phydev->pause = phydev->asym_pause = 0;

  switch (status) {
  case 128:
   phydev->speed = SPEED_1000;
   break;

  case 129:
   phydev->speed = SPEED_100;
   break;

  default:
   phydev->speed = SPEED_10;
   break;
  }

  if (phydev->duplex == DUPLEX_FULL) {
   phydev->pause = lpa & LPA_PAUSE_CAP ? 1 : 0;
   phydev->asym_pause = lpa & LPA_PAUSE_ASYM ? 1 : 0;
  }
 } else {
  int bmcr = phy_read(phydev, MII_BMCR);

  if (bmcr < 0)
   return bmcr;

  if (bmcr & BMCR_FULLDPLX)
   phydev->duplex = DUPLEX_FULL;
  else
   phydev->duplex = DUPLEX_HALF;

  if (bmcr & BMCR_SPEED1000)
   phydev->speed = SPEED_1000;
  else if (bmcr & BMCR_SPEED100)
   phydev->speed = SPEED_100;
  else
   phydev->speed = SPEED_10;

  phydev->pause = phydev->asym_pause = 0;
 }

 return 0;
}
