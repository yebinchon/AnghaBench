
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_ISOLATE ;
 int MII_BMCR ;
 int genphy_config_advert (struct phy_device*) ;
 int genphy_restart_aneg (struct phy_device*) ;
 int genphy_setup_forced (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;

int genphy_config_aneg(struct phy_device *phydev)
{
 int result;

 if (AUTONEG_ENABLE != phydev->autoneg)
  return genphy_setup_forced(phydev);

 result = genphy_config_advert(phydev);

 if (result < 0)
  return result;

 if (result == 0) {


  int ctl = phy_read(phydev, MII_BMCR);

  if (ctl < 0)
   return ctl;

  if (!(ctl & BMCR_ANENABLE) || (ctl & BMCR_ISOLATE))
   result = 1;
 }



 if (result > 0)
  result = genphy_restart_aneg(phydev);

 return result;
}
