
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ interface; } ;


 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ;
 int genphy_config_aneg (struct phy_device*) ;
 int phy_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int bcm5481_config_aneg(struct phy_device *phydev)
{
 int ret;


 ret = genphy_config_aneg(phydev);


 if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID) {
  u16 reg;
  reg = 0x7 | (0x7 << 12);
  phy_write(phydev, 0x18, reg);

  reg = phy_read(phydev, 0x18);

  reg |= (1 << 8);

  reg |= (1 << 15);
  phy_write(phydev, 0x18, reg);
 }

 return ret;
}
