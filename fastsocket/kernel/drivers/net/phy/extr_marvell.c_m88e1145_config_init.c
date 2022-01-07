
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; int dev_flags; } ;


 int M1145_DEV_FLAGS_RESISTANCE ;
 int MII_M1145_PHY_EXT_CR ;
 int MII_M1145_RGMII_RX_DELAY ;
 int MII_M1145_RGMII_TX_DELAY ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 int phy_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int m88e1145_config_init(struct phy_device *phydev)
{
 int err;


 err = phy_write(phydev, 0x1d, 0x001b);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1e, 0x418f);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1d, 0x0016);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1e, 0xa2da);
 if (err < 0)
  return err;

 if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID) {
  int temp = phy_read(phydev, MII_M1145_PHY_EXT_CR);
  if (temp < 0)
   return temp;

  temp |= (MII_M1145_RGMII_RX_DELAY | MII_M1145_RGMII_TX_DELAY);

  err = phy_write(phydev, MII_M1145_PHY_EXT_CR, temp);
  if (err < 0)
   return err;

  if (phydev->dev_flags & M1145_DEV_FLAGS_RESISTANCE) {
   err = phy_write(phydev, 0x1d, 0x0012);
   if (err < 0)
    return err;

   temp = phy_read(phydev, 0x1e);
   if (temp < 0)
    return temp;

   temp &= 0xf03f;
   temp |= 2 << 9;
   temp |= 2 << 6;

   err = phy_write(phydev, 0x1e, temp);
   if (err < 0)
    return err;

   err = phy_write(phydev, 0x1d, 0x3);
   if (err < 0)
    return err;

   err = phy_write(phydev, 0x1e, 0x8000);
   if (err < 0)
    return err;
  }
 }

 return 0;
}
