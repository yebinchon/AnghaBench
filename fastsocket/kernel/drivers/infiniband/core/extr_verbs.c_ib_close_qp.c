
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp {int usecnt; TYPE_1__* device; int open_list; struct ib_qp* real_qp; } ;
struct TYPE_2__ {int event_handler_lock; } ;


 int EINVAL ;
 int atomic_dec (int *) ;
 int kfree (struct ib_qp*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ib_close_qp(struct ib_qp *qp)
{
 struct ib_qp *real_qp;
 unsigned long flags;

 real_qp = qp->real_qp;
 if (real_qp == qp)
  return -EINVAL;

 spin_lock_irqsave(&real_qp->device->event_handler_lock, flags);
 list_del(&qp->open_list);
 spin_unlock_irqrestore(&real_qp->device->event_handler_lock, flags);

 atomic_dec(&real_qp->usecnt);
 kfree(qp);

 return 0;
}
