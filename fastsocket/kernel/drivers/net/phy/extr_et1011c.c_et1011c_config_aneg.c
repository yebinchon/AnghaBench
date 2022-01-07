
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_RESET ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int MII_BMCR ;
 int genphy_config_aneg (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int et1011c_config_aneg(struct phy_device *phydev)
{
 int ctl = 0;
 ctl = phy_read(phydev, MII_BMCR);
 if (ctl < 0)
  return ctl;
 ctl &= ~(BMCR_FULLDPLX | BMCR_SPEED100 | BMCR_SPEED1000 |
   BMCR_ANENABLE);

 phy_write(phydev, MII_BMCR, ctl | BMCR_RESET);

 return genphy_config_aneg(phydev);
}
