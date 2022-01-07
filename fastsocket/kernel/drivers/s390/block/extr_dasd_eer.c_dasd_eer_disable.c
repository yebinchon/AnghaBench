
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int cdev; int flags; struct dasd_ccw_req* eer_cqr; } ;
struct dasd_ccw_req {int dummy; } ;


 int DASD_FLAG_EER_IN_USE ;
 int DASD_FLAG_EER_SNSS ;
 int clear_bit (int ,int *) ;
 int dasd_kfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int test_and_clear_bit (int ,int *) ;

void dasd_eer_disable(struct dasd_device *device)
{
 struct dasd_ccw_req *cqr;
 unsigned long flags;
 int in_use;

 if (!device->eer_cqr)
  return;
 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 cqr = device->eer_cqr;
 device->eer_cqr = ((void*)0);
 clear_bit(DASD_FLAG_EER_SNSS, &device->flags);
 in_use = test_and_clear_bit(DASD_FLAG_EER_IN_USE, &device->flags);
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 if (cqr && !in_use)
  dasd_kfree_request(cqr, device);
}
