
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct ccwgroup_driver {scalar_t__ driver_id; } ;
struct ccwgroup_device {scalar_t__ creator_id; } ;


 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;
 struct ccwgroup_driver* to_ccwgroupdrv (struct device_driver*) ;

__attribute__((used)) static int
ccwgroup_bus_match (struct device * dev, struct device_driver * drv)
{
 struct ccwgroup_device *gdev;
 struct ccwgroup_driver *gdrv;

 gdev = to_ccwgroupdev(dev);
 gdrv = to_ccwgroupdrv(drv);

 if (gdev->creator_id == gdrv->driver_id)
  return 1;

 return 0;
}
