
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int MII_BCM54XX_EXP_DATA ;
 int MII_BCM54XX_EXP_SEL ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int bcm54xx_exp_read(struct phy_device *phydev, u16 regnum)
{
 int val;

 val = phy_write(phydev, MII_BCM54XX_EXP_SEL, regnum);
 if (val < 0)
  return val;

 val = phy_read(phydev, MII_BCM54XX_EXP_DATA);


 phy_write(phydev, MII_BCM54XX_EXP_SEL, 0);

 return val;
}
