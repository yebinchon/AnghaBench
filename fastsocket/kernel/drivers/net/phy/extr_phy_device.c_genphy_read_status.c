
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; int supported; scalar_t__ duplex; int pause; int asym_pause; void* speed; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 scalar_t__ DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 int LPA_1000FULL ;
 int LPA_1000HALF ;
 int LPA_100FULL ;
 int LPA_100HALF ;
 int LPA_10FULL ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 int MII_LPA ;
 int MII_STAT1000 ;
 void* SPEED_10 ;
 void* SPEED_100 ;
 void* SPEED_1000 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int genphy_update_link (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;

int genphy_read_status(struct phy_device *phydev)
{
 int adv;
 int err;
 int lpa;
 int lpagb = 0;



 err = genphy_update_link(phydev);
 if (err)
  return err;

 if (AUTONEG_ENABLE == phydev->autoneg) {
  if (phydev->supported & (SUPPORTED_1000baseT_Half
     | SUPPORTED_1000baseT_Full)) {
   lpagb = phy_read(phydev, MII_STAT1000);

   if (lpagb < 0)
    return lpagb;

   adv = phy_read(phydev, MII_CTRL1000);

   if (adv < 0)
    return adv;

   lpagb &= adv << 2;
  }

  lpa = phy_read(phydev, MII_LPA);

  if (lpa < 0)
   return lpa;

  adv = phy_read(phydev, MII_ADVERTISE);

  if (adv < 0)
   return adv;

  lpa &= adv;

  phydev->speed = SPEED_10;
  phydev->duplex = DUPLEX_HALF;
  phydev->pause = phydev->asym_pause = 0;

  if (lpagb & (LPA_1000FULL | LPA_1000HALF)) {
   phydev->speed = SPEED_1000;

   if (lpagb & LPA_1000FULL)
    phydev->duplex = DUPLEX_FULL;
  } else if (lpa & (LPA_100FULL | LPA_100HALF)) {
   phydev->speed = SPEED_100;

   if (lpa & LPA_100FULL)
    phydev->duplex = DUPLEX_FULL;
  } else
   if (lpa & LPA_10FULL)
    phydev->duplex = DUPLEX_FULL;

  if (phydev->duplex == DUPLEX_FULL){
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
