
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ccwgroup_driver {int driver; } ;
struct ccwgroup_device {int reg_mutex; } ;


 int __ccwgroup_match_all ;
 int __ccwgroup_remove_cdev_refs (struct ccwgroup_device*) ;
 int __ccwgroup_remove_symlinks (struct ccwgroup_device*) ;
 int device_unregister (struct device*) ;
 struct device* driver_find_device (int *,int *,int *,int ) ;
 int driver_unregister (int *) ;
 int get_driver (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;
 int put_driver (int *) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;

void ccwgroup_driver_unregister(struct ccwgroup_driver *cdriver)
{
 struct device *dev;


 get_driver(&cdriver->driver);
 while ((dev = driver_find_device(&cdriver->driver, ((void*)0), ((void*)0),
      __ccwgroup_match_all))) {
  struct ccwgroup_device *gdev = to_ccwgroupdev(dev);

  mutex_lock(&gdev->reg_mutex);
  __ccwgroup_remove_symlinks(gdev);
  device_unregister(dev);
  __ccwgroup_remove_cdev_refs(gdev);
  mutex_unlock(&gdev->reg_mutex);
  put_device(dev);
 }
 put_driver(&cdriver->driver);
 driver_unregister(&cdriver->driver);
}
