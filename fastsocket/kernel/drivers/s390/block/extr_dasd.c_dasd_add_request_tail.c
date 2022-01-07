
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int cdev; int ccw_queue; } ;
struct dasd_ccw_req {int devlist; int status; struct dasd_device* startdev; } ;


 int DASD_CQR_QUEUED ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int get_ccwdev_lock (int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void dasd_add_request_tail(struct dasd_ccw_req *cqr)
{
 struct dasd_device *device;
 unsigned long flags;

 device = cqr->startdev;
 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 cqr->status = DASD_CQR_QUEUED;
 list_add_tail(&cqr->devlist, &device->ccw_queue);

 dasd_schedule_device_bh(device);
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
}
