
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_driver {int (* resume ) (struct sa1111_dev*) ;} ;
struct sa1111_dev {int dummy; } ;
struct device {int driver; } ;


 struct sa1111_dev* SA1111_DEV (struct device*) ;
 struct sa1111_driver* SA1111_DRV (int ) ;
 int stub1 (struct sa1111_dev*) ;

__attribute__((used)) static int sa1111_bus_resume(struct device *dev)
{
 struct sa1111_dev *sadev = SA1111_DEV(dev);
 struct sa1111_driver *drv = SA1111_DRV(dev->driver);
 int ret = 0;

 if (drv && drv->resume)
  ret = drv->resume(sadev);
 return ret;
}
