
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_driver {int suspend; } ;
struct TYPE_3__ {struct device_driver* driver; } ;
struct phy_device {struct net_device* attached_dev; TYPE_1__ dev; } ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device_driver {int dummy; } ;


 scalar_t__ device_may_wakeup (TYPE_2__*) ;
 struct phy_driver* to_phy_driver (struct device_driver*) ;

__attribute__((used)) static bool mdio_bus_phy_may_suspend(struct phy_device *phydev)
{
 struct device_driver *drv = phydev->dev.driver;
 struct phy_driver *phydrv = to_phy_driver(drv);
 struct net_device *netdev = phydev->attached_dev;

 if (!drv || !phydrv->suspend)
  return 0;


 if (!netdev)
  return 1;





 if (netdev->dev.parent && device_may_wakeup(netdev->dev.parent))
  return 0;






 if (device_may_wakeup(&netdev->dev))
  return 0;

 return 1;
}
