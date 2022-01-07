
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver {int (* remove ) (struct vio_dev*) ;} ;
struct vio_dev {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct vio_dev*) ;
 struct vio_dev* to_vio_dev (struct device*) ;
 struct vio_driver* to_vio_driver (int ) ;

__attribute__((used)) static int vio_device_remove(struct device *dev)
{
 struct vio_dev *vdev = to_vio_dev(dev);
 struct vio_driver *drv = to_vio_driver(dev->driver);

 if (drv->remove)
  return drv->remove(vdev);

 return 1;
}
