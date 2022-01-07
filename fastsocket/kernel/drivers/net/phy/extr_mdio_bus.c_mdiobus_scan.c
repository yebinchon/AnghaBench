
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct mii_bus {int dummy; } ;


 scalar_t__ IS_ERR (struct phy_device*) ;
 struct phy_device* get_phy_device (struct mii_bus*,int) ;
 int phy_device_free (struct phy_device*) ;
 int phy_device_register (struct phy_device*) ;

struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
{
 struct phy_device *phydev;
 int err;

 phydev = get_phy_device(bus, addr);
 if (IS_ERR(phydev) || phydev == ((void*)0))
  return phydev;

 err = phy_device_register(phydev);
 if (err) {
  phy_device_free(phydev);
  return ((void*)0);
 }

 return phydev;
}
