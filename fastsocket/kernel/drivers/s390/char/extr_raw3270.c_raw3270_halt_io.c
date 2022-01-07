
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_request {int dummy; } ;
struct raw3270 {int cdev; } ;


 int get_ccwdev_lock (int ) ;
 int raw3270_halt_io_nolock (struct raw3270*,struct raw3270_request*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int
raw3270_halt_io(struct raw3270 *rp, struct raw3270_request *rq)
{
 unsigned long flags;
 int rc;

 spin_lock_irqsave(get_ccwdev_lock(rp->cdev), flags);
 rc = raw3270_halt_io_nolock(rp, rq);
 spin_unlock_irqrestore(get_ccwdev_lock(rp->cdev), flags);
 return rc;
}
