
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int cdev; } ;


 int DASD_STOPPED_PENDING ;
 int dasd_device_remove_stop_bits (struct dasd_device*,int ) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void dasd_device_timeout(unsigned long ptr)
{
 unsigned long flags;
 struct dasd_device *device;

 device = (struct dasd_device *) ptr;
 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);

 dasd_device_remove_stop_bits(device, DASD_STOPPED_PENDING);
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 dasd_schedule_device_bh(device);
}
