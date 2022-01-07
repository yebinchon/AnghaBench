
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {int cdev; int flags; } ;
struct ccw_device {int dev; } ;


 int RAW3215_FLUSHING ;
 int RAW3215_FROZEN ;
 struct raw3215_info* dev_get_drvdata (int *) ;
 int get_ccwdev_lock (int ) ;
 int raw3215_try_io (struct raw3215_info*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int raw3215_pm_start(struct ccw_device *cdev)
{
 struct raw3215_info *raw;
 unsigned long flags;


 raw = dev_get_drvdata(&cdev->dev);
 spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
 raw->flags &= ~RAW3215_FROZEN;
 raw->flags |= RAW3215_FLUSHING;
 raw3215_try_io(raw);
 raw->flags &= ~RAW3215_FLUSHING;
 spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);
 return 0;
}
