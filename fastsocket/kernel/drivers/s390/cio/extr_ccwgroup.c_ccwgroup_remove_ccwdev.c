
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccwgroup_device {int dev; int reg_mutex; } ;
struct ccw_device {int ccwlock; int dev; } ;


 int __ccwgroup_remove_cdev_refs (struct ccwgroup_device*) ;
 int __ccwgroup_remove_symlinks (struct ccwgroup_device*) ;
 int ccw_device_set_offline (struct ccw_device*) ;
 struct ccwgroup_device* dev_get_drvdata (int *) ;
 scalar_t__ device_is_registered (int *) ;
 int device_unregister (int *) ;
 int get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void ccwgroup_remove_ccwdev(struct ccw_device *cdev)
{
 struct ccwgroup_device *gdev;


 ccw_device_set_offline(cdev);

 spin_lock_irq(cdev->ccwlock);
 gdev = dev_get_drvdata(&cdev->dev);
 if (!gdev) {
  spin_unlock_irq(cdev->ccwlock);
  return;
 }

 get_device(&gdev->dev);
 spin_unlock_irq(cdev->ccwlock);

 mutex_lock(&gdev->reg_mutex);
 if (device_is_registered(&gdev->dev)) {
  __ccwgroup_remove_symlinks(gdev);
  device_unregister(&gdev->dev);
  __ccwgroup_remove_cdev_refs(gdev);
 }
 mutex_unlock(&gdev->reg_mutex);

 put_device(&gdev->dev);
}
