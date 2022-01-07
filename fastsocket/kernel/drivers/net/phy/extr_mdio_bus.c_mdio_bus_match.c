
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_driver {int phy_id; int phy_id_mask; } ;
struct phy_device {int phy_id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct phy_device* to_phy_device (struct device*) ;
 struct phy_driver* to_phy_driver (struct device_driver*) ;

__attribute__((used)) static int mdio_bus_match(struct device *dev, struct device_driver *drv)
{
 struct phy_device *phydev = to_phy_device(dev);
 struct phy_driver *phydrv = to_phy_driver(drv);

 return ((phydrv->phy_id & phydrv->phy_id_mask) ==
  (phydev->phy_id & phydrv->phy_id_mask));
}
