
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int MII_M1011_PHY_SCR ;
 int MII_M1011_PHY_SCR_AUTO_CROSS ;
 int genphy_config_aneg (struct phy_device*) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int m88e1118_config_aneg(struct phy_device *phydev)
{
 int err;

 err = phy_write(phydev, MII_BMCR, BMCR_RESET);
 if (err < 0)
  return err;

 err = phy_write(phydev, MII_M1011_PHY_SCR,
   MII_M1011_PHY_SCR_AUTO_CROSS);
 if (err < 0)
  return err;

 err = genphy_config_aneg(phydev);
 return 0;
}
