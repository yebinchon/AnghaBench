
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {int cdev; int flags; } ;
struct ccw_device {int dev; } ;


 int RAW3215_BUFFER_SIZE ;
 int RAW3215_FROZEN ;
 struct raw3215_info* dev_get_drvdata (int *) ;
 int get_ccwdev_lock (int ) ;
 int raw3215_make_room (struct raw3215_info*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int raw3215_pm_stop(struct ccw_device *cdev)
{
 struct raw3215_info *raw;
 unsigned long flags;


 raw = dev_get_drvdata(&cdev->dev);
 spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
 raw3215_make_room(raw, RAW3215_BUFFER_SIZE);
 raw->flags |= RAW3215_FROZEN;
 spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);
 return 0;
}
