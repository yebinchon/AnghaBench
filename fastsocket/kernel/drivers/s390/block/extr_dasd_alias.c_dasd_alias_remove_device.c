
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_eckd_private {struct alias_lcu* lcu; } ;
struct dasd_device {scalar_t__ private; } ;
struct alias_lcu {int lock; } ;


 int _remove_device_from_lcu (struct alias_lcu*,struct dasd_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int dasd_alias_remove_device(struct dasd_device *device)
{
 struct dasd_eckd_private *private;
 struct alias_lcu *lcu;
 unsigned long flags;

 private = (struct dasd_eckd_private *) device->private;
 lcu = private->lcu;

 if (!lcu)
  return 0;
 spin_lock_irqsave(&lcu->lock, flags);
 _remove_device_from_lcu(lcu, device);
 spin_unlock_irqrestore(&lcu->lock, flags);
 return 0;
}
