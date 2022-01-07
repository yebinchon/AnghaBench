
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_RESET ;
 int MII_BMCR ;
 int MII_M1011_PHY_SCR ;
 int MII_M1011_PHY_SCR_AUTO_CROSS ;
 int MII_M1111_PHY_LED_CONTROL ;
 int MII_M1111_PHY_LED_DIRECT ;
 int genphy_config_aneg (struct phy_device*) ;
 int phy_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int marvell_config_aneg(struct phy_device *phydev)
{
 int err;




 err = phy_write(phydev, MII_BMCR, BMCR_RESET);

 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1d, 0x1f);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1e, 0x200c);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1d, 0x5);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1e, 0);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1e, 0x100);
 if (err < 0)
  return err;

 err = phy_write(phydev, MII_M1011_PHY_SCR,
   MII_M1011_PHY_SCR_AUTO_CROSS);
 if (err < 0)
  return err;

 err = phy_write(phydev, MII_M1111_PHY_LED_CONTROL,
   MII_M1111_PHY_LED_DIRECT);
 if (err < 0)
  return err;

 err = genphy_config_aneg(phydev);
 if (err < 0)
  return err;

 if (phydev->autoneg != AUTONEG_ENABLE) {
  int bmcr;






  bmcr = phy_read(phydev, MII_BMCR);
  if (bmcr < 0)
   return bmcr;

  err = phy_write(phydev, MII_BMCR, bmcr | BMCR_RESET);
  if (err < 0)
   return err;
 }

 return 0;
}
