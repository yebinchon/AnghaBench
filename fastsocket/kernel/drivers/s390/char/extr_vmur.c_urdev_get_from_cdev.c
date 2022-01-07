
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urdev {int dummy; } ;
struct ccw_device {int dev; } ;


 struct urdev* dev_get_drvdata (int *) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int urdev_get (struct urdev*) ;

__attribute__((used)) static struct urdev *urdev_get_from_cdev(struct ccw_device *cdev)
{
 struct urdev *urd;
 unsigned long flags;

 spin_lock_irqsave(get_ccwdev_lock(cdev), flags);
 urd = dev_get_drvdata(&cdev->dev);
 if (urd)
  urdev_get(urd);
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);
 return urd;
}
