
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_ISOLATE ;
 int MII_BMCR ;
 int genphy_config_aneg (struct phy_device*) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int dm9161_config_aneg(struct phy_device *phydev)
{
 int err;


 err = phy_write(phydev, MII_BMCR, BMCR_ISOLATE);

 if (err < 0)
  return err;


 err = genphy_config_aneg(phydev);

 if (err < 0)
  return err;

 return 0;
}
