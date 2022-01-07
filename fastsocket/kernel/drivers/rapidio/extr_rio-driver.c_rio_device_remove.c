
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_driver {int (* remove ) (struct rio_dev*) ;} ;
struct rio_dev {struct rio_driver* driver; } ;
struct device {int dummy; } ;


 int rio_dev_put (struct rio_dev*) ;
 int stub1 (struct rio_dev*) ;
 struct rio_dev* to_rio_dev (struct device*) ;

__attribute__((used)) static int rio_device_remove(struct device *dev)
{
 struct rio_dev *rdev = to_rio_dev(dev);
 struct rio_driver *rdrv = rdev->driver;

 if (rdrv) {
  if (rdrv->remove)
   rdrv->remove(rdev);
  rdev->driver = ((void*)0);
 }

 rio_dev_put(rdev);

 return 0;
}
