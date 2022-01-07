
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_driver {int (* resume ) (struct phy_device*) ;} ;
struct phy_device {int dummy; } ;
struct device {int driver; } ;


 int mdio_bus_phy_may_suspend (struct phy_device*) ;
 int stub1 (struct phy_device*) ;
 struct phy_device* to_phy_device (struct device*) ;
 struct phy_driver* to_phy_driver (int ) ;

__attribute__((used)) static int mdio_bus_resume(struct device * dev)
{
 struct phy_driver *phydrv = to_phy_driver(dev->driver);
 struct phy_device *phydev = to_phy_device(dev);

 if (!mdio_bus_phy_may_suspend(phydev))
  return 0;
 return phydrv->resume(phydev);
}
