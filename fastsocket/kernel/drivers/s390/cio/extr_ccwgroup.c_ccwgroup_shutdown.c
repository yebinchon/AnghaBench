
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct ccwgroup_driver {int (* shutdown ) (struct ccwgroup_device*) ;} ;
struct ccwgroup_device {int dummy; } ;


 int stub1 (struct ccwgroup_device*) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;
 struct ccwgroup_driver* to_ccwgroupdrv (int ) ;

__attribute__((used)) static void ccwgroup_shutdown(struct device *dev)
{
 struct ccwgroup_device *gdev;
 struct ccwgroup_driver *gdrv;

 if (!dev->driver)
  return;

 gdev = to_ccwgroupdev(dev);
 gdrv = to_ccwgroupdrv(dev->driver);

 if (gdrv->shutdown)
  gdrv->shutdown(gdev);
}
