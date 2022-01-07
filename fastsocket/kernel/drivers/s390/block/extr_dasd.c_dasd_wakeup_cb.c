
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_ccw_req {TYPE_1__* startdev; int callback_data; } ;
struct TYPE_2__ {int cdev; } ;


 int DASD_SLEEPON_END_TAG ;
 int generic_waitq ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wake_up (int *) ;

void dasd_wakeup_cb(struct dasd_ccw_req *cqr, void *data)
{
 spin_lock_irq(get_ccwdev_lock(cqr->startdev->cdev));
 cqr->callback_data = DASD_SLEEPON_END_TAG;
 spin_unlock_irq(get_ccwdev_lock(cqr->startdev->cdev));
 wake_up(&generic_waitq);
}
