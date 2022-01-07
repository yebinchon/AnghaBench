
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ccwgroup_device {int reg_mutex; int dev; } ;


 int __ccwgroup_remove_cdev_refs (struct ccwgroup_device*) ;
 int __ccwgroup_remove_symlinks (struct ccwgroup_device*) ;
 scalar_t__ device_is_registered (int *) ;
 int device_unregister (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;

__attribute__((used)) static void ccwgroup_ungroup_callback(struct device *dev)
{
 struct ccwgroup_device *gdev = to_ccwgroupdev(dev);

 mutex_lock(&gdev->reg_mutex);
 if (device_is_registered(&gdev->dev)) {
  __ccwgroup_remove_symlinks(gdev);
  device_unregister(dev);
  __ccwgroup_remove_cdev_refs(gdev);
 }
 mutex_unlock(&gdev->reg_mutex);
}
