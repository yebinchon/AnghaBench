
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int MII_BCM54XX_SHD ;
 int MII_BCM54XX_SHD_DATA (int ) ;
 int MII_BCM54XX_SHD_VAL (int ) ;
 int MII_BCM54XX_SHD_WRITE ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm54xx_shadow_write(struct phy_device *phydev, u16 shadow, u16 val)
{
 return phy_write(phydev, MII_BCM54XX_SHD,
    MII_BCM54XX_SHD_WRITE |
    MII_BCM54XX_SHD_VAL(shadow) |
    MII_BCM54XX_SHD_DATA(val));
}
