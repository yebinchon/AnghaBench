
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccwgroup_device {int count; struct ccw_device** cdev; } ;
struct ccw_device {int dev; int ccwlock; } ;


 int dev_set_drvdata (int *,int *) ;
 int put_device (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void __ccwgroup_remove_cdev_refs(struct ccwgroup_device *gdev)
{
 struct ccw_device *cdev;
 int i;

 for (i = 0; i < gdev->count; i++) {
  cdev = gdev->cdev[i];
  if (!cdev)
   continue;
  spin_lock_irq(cdev->ccwlock);
  dev_set_drvdata(&cdev->dev, ((void*)0));
  spin_unlock_irq(cdev->ccwlock);
  gdev->cdev[i] = ((void*)0);
  put_device(&cdev->dev);
 }
}
