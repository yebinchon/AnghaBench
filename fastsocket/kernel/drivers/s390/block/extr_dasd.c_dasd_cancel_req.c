
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {TYPE_2__* cdev; TYPE_1__* discipline; } ;
struct dasd_ccw_req {int status; int stopclk; struct dasd_device* startdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* term_IO ) (struct dasd_ccw_req*) ;} ;


 int DASD_CQR_CLEARED ;


 int dasd_schedule_device_bh (struct dasd_device*) ;
 int dev_err (int *,char*,struct dasd_ccw_req*,int) ;
 int get_ccwdev_lock (TYPE_2__*) ;
 int get_clock () ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct dasd_ccw_req*) ;

int dasd_cancel_req(struct dasd_ccw_req *cqr)
{
 struct dasd_device *device = cqr->startdev;
 unsigned long flags;
 int rc;

 rc = 0;
 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 switch (cqr->status) {
 case 128:

  cqr->status = DASD_CQR_CLEARED;
  break;
 case 129:

  rc = device->discipline->term_IO(cqr);
  if (rc) {
   dev_err(&device->cdev->dev,
    "Cancelling request %p failed with rc=%d\n",
    cqr, rc);
  } else {
   cqr->stopclk = get_clock();
  }
  break;
 default:
  break;
 }
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 dasd_schedule_device_bh(device);
 return rc;
}
