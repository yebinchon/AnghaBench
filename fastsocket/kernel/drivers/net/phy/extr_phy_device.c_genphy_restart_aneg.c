
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_ISOLATE ;
 int MII_BMCR ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

int genphy_restart_aneg(struct phy_device *phydev)
{
 int ctl;

 ctl = phy_read(phydev, MII_BMCR);

 if (ctl < 0)
  return ctl;

 ctl |= (BMCR_ANENABLE | BMCR_ANRESTART);


 ctl &= ~(BMCR_ISOLATE);

 ctl = phy_write(phydev, MII_BMCR, ctl);

 return ctl;
}
