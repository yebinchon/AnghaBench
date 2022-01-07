
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int m88e1118_config_init(struct phy_device *phydev)
{
 int err;


 err = phy_write(phydev, 0x16, 0x0002);
 if (err < 0)
  return err;


 err = phy_write(phydev, 0x15, 0x1070);
 if (err < 0)
  return err;


 err = phy_write(phydev, 0x16, 0x0003);
 if (err < 0)
  return err;


 err = phy_write(phydev, 0x10, 0x021e);
 if (err < 0)
  return err;


 err = phy_write(phydev, 0x16, 0x0);
 if (err < 0)
  return err;

 err = phy_write(phydev, MII_BMCR, BMCR_RESET);
 if (err < 0)
  return err;

 return 0;
}
