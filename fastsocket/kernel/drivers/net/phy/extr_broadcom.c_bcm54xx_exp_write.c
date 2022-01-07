
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int MII_BCM54XX_EXP_DATA ;
 int MII_BCM54XX_EXP_SEL ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int bcm54xx_exp_write(struct phy_device *phydev, u16 regnum, u16 val)
{
 int ret;

 ret = phy_write(phydev, MII_BCM54XX_EXP_SEL, regnum);
 if (ret < 0)
  return ret;

 ret = phy_write(phydev, MII_BCM54XX_EXP_DATA, val);


 phy_write(phydev, MII_BCM54XX_EXP_SEL, 0);

 return ret;
}
