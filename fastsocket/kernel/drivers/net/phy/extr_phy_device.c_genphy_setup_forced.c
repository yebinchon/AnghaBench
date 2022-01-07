
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ speed; scalar_t__ duplex; scalar_t__ asym_pause; scalar_t__ pause; } ;


 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 scalar_t__ DUPLEX_FULL ;
 int MII_BMCR ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int phy_write (struct phy_device*,int ,int) ;

int genphy_setup_forced(struct phy_device *phydev)
{
 int err;
 int ctl = 0;

 phydev->pause = phydev->asym_pause = 0;

 if (SPEED_1000 == phydev->speed)
  ctl |= BMCR_SPEED1000;
 else if (SPEED_100 == phydev->speed)
  ctl |= BMCR_SPEED100;

 if (DUPLEX_FULL == phydev->duplex)
  ctl |= BMCR_FULLDPLX;

 err = phy_write(phydev, MII_BMCR, ctl);

 return err;
}
