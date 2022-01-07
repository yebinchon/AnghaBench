
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_eckd_private {struct alias_lcu* lcu; } ;
struct dasd_device {int cdev; int alias_list; scalar_t__ private; } ;
struct alias_lcu {int flags; int lock; int active_devices; } ;


 int UPDATE_PENDING ;
 int _add_device_to_lcu (struct alias_lcu*,struct dasd_device*,struct dasd_device*) ;
 int _schedule_lcu_update (struct alias_lcu*,struct dasd_device*) ;
 int get_ccwdev_lock (int ) ;
 int list_move (int *,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int dasd_alias_add_device(struct dasd_device *device)
{
 struct dasd_eckd_private *private;
 struct alias_lcu *lcu;
 unsigned long flags;
 int rc;

 private = (struct dasd_eckd_private *) device->private;
 lcu = private->lcu;
 rc = 0;


 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 spin_lock(&lcu->lock);
 if (!(lcu->flags & UPDATE_PENDING)) {
  rc = _add_device_to_lcu(lcu, device, device);
  if (rc)
   lcu->flags |= UPDATE_PENDING;
 }
 if (lcu->flags & UPDATE_PENDING) {
  list_move(&device->alias_list, &lcu->active_devices);
  _schedule_lcu_update(lcu, device);
 }
 spin_unlock(&lcu->lock);
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 return rc;
}
