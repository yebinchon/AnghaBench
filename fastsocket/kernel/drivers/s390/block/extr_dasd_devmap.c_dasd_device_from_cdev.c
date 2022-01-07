
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct ccw_device {int dummy; } ;


 struct dasd_device* dasd_device_from_cdev_locked (struct ccw_device*) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

struct dasd_device *
dasd_device_from_cdev(struct ccw_device *cdev)
{
 struct dasd_device *device;
 unsigned long flags;

 spin_lock_irqsave(get_ccwdev_lock(cdev), flags);
 device = dasd_device_from_cdev_locked(cdev);
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);
 return device;
}
