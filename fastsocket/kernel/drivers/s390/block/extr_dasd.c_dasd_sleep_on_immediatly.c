
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; } ;
struct dasd_device {scalar_t__ block; int cdev; TYPE_1__ ccw_queue; int flags; } ;
struct dasd_ccw_req {scalar_t__ status; int intrc; int devlist; int callback_data; int callback; int flags; struct dasd_device* startdev; } ;


 int DASD_CQR_ALLOW_SLOCK ;
 scalar_t__ DASD_CQR_DONE ;
 scalar_t__ DASD_CQR_FAILED ;
 scalar_t__ DASD_CQR_QUEUED ;
 int DASD_FLAG_LOCK_STOLEN ;
 int DASD_SLEEPON_START_TAG ;
 int EIO ;
 int EPERM ;
 int _dasd_term_running_cqr (struct dasd_device*) ;
 int _wait_for_wakeup (struct dasd_ccw_req*) ;
 int dasd_schedule_block_bh (scalar_t__) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int dasd_wakeup_cb ;
 int generic_waitq ;
 int get_ccwdev_lock (int ) ;
 int list_add (int *,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int ) ;

int dasd_sleep_on_immediatly(struct dasd_ccw_req *cqr)
{
 struct dasd_device *device;
 int rc;

 device = cqr->startdev;
 if (test_bit(DASD_FLAG_LOCK_STOLEN, &device->flags) &&
     !test_bit(DASD_CQR_ALLOW_SLOCK, &cqr->flags)) {
  cqr->status = DASD_CQR_FAILED;
  cqr->intrc = -EPERM;
  return -EIO;
 }
 spin_lock_irq(get_ccwdev_lock(device->cdev));
 rc = _dasd_term_running_cqr(device);
 if (rc) {
  spin_unlock_irq(get_ccwdev_lock(device->cdev));
  return rc;
 }
 cqr->callback = dasd_wakeup_cb;
 cqr->callback_data = DASD_SLEEPON_START_TAG;
 cqr->status = DASD_CQR_QUEUED;




 list_add(&cqr->devlist, device->ccw_queue.next);


 dasd_schedule_device_bh(device);

 spin_unlock_irq(get_ccwdev_lock(device->cdev));

 wait_event(generic_waitq, _wait_for_wakeup(cqr));

 if (cqr->status == DASD_CQR_DONE)
  rc = 0;
 else if (cqr->intrc)
  rc = cqr->intrc;
 else
  rc = -EIO;


 dasd_schedule_device_bh(device);
 if (device->block)
  dasd_schedule_block_bh(device->block);

 return rc;
}
