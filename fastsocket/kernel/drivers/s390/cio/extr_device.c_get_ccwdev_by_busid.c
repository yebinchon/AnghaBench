
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct ccw_driver {int driver; } ;
struct ccw_device {int dummy; } ;


 int __ccwdev_check_busid ;
 struct device* driver_find_device (struct device_driver*,int *,void*,int ) ;
 struct device_driver* get_driver (int *) ;
 int put_driver (struct device_driver*) ;
 struct ccw_device* to_ccwdev (struct device*) ;

struct ccw_device *get_ccwdev_by_busid(struct ccw_driver *cdrv,
           const char *bus_id)
{
 struct device *dev;
 struct device_driver *drv;

 drv = get_driver(&cdrv->driver);
 if (!drv)
  return ((void*)0);

 dev = driver_find_device(drv, ((void*)0), (void *)bus_id,
     __ccwdev_check_busid);
 put_driver(drv);

 return dev ? to_ccwdev(dev) : ((void*)0);
}
