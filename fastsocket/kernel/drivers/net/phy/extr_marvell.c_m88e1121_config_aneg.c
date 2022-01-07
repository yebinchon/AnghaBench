
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_RESET ;
 int MII_88E1121_PHY_LED_CTRL ;
 int MII_88E1121_PHY_LED_DEF ;
 int MII_88E1121_PHY_LED_PAGE ;
 int MII_88E1121_PHY_PAGE ;
 int MII_BMCR ;
 int MII_M1011_PHY_SCR ;
 int MII_M1011_PHY_SCR_AUTO_CROSS ;
 int genphy_config_aneg (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int m88e1121_config_aneg(struct phy_device *phydev)
{
 int err, temp;

 err = phy_write(phydev, MII_BMCR, BMCR_RESET);
 if (err < 0)
  return err;

 err = phy_write(phydev, MII_M1011_PHY_SCR,
   MII_M1011_PHY_SCR_AUTO_CROSS);
 if (err < 0)
  return err;

 temp = phy_read(phydev, MII_88E1121_PHY_PAGE);

 phy_write(phydev, MII_88E1121_PHY_PAGE, MII_88E1121_PHY_LED_PAGE);
 phy_write(phydev, MII_88E1121_PHY_LED_CTRL, MII_88E1121_PHY_LED_DEF);
 phy_write(phydev, MII_88E1121_PHY_PAGE, temp);

 err = genphy_config_aneg(phydev);

 return err;
}
