
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct ccwgroup_driver {int (* remove ) (struct ccwgroup_device*) ;} ;
struct ccwgroup_device {int dummy; } ;


 int dev_attr_online ;
 int dev_attr_ungroup ;
 int device_remove_file (struct device*,int *) ;
 int stub1 (struct ccwgroup_device*) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;
 struct ccwgroup_driver* to_ccwgroupdrv (int ) ;

__attribute__((used)) static int
ccwgroup_remove (struct device *dev)
{
 struct ccwgroup_device *gdev;
 struct ccwgroup_driver *gdrv;

 device_remove_file(dev, &dev_attr_online);
 device_remove_file(dev, &dev_attr_ungroup);

 if (!dev->driver)
  return 0;

 gdev = to_ccwgroupdev(dev);
 gdrv = to_ccwgroupdrv(dev->driver);

 if (gdrv->remove)
  gdrv->remove(gdev);

 return 0;
}
