
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int ste10Xp_config_init(struct phy_device *phydev)
{
 int value, err;


 value = phy_read(phydev, MII_BMCR);
 if (value < 0)
  return value;

 value |= BMCR_RESET;
 err = phy_write(phydev, MII_BMCR, value);
 if (err < 0)
  return err;

 do {
  value = phy_read(phydev, MII_BMCR);
 } while (value & BMCR_RESET);

 return 0;
}
