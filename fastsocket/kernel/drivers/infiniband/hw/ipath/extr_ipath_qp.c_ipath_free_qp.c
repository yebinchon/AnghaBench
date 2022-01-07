
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_qp_table {size_t max; int lock; struct ipath_qp** table; } ;
struct TYPE_2__ {size_t qp_num; } ;
struct ipath_qp {int refcount; struct ipath_qp* next; TYPE_1__ ibqp; } ;


 int atomic_dec (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipath_free_qp(struct ipath_qp_table *qpt, struct ipath_qp *qp)
{
 struct ipath_qp *q, **qpp;
 unsigned long flags;

 spin_lock_irqsave(&qpt->lock, flags);


 qpp = &qpt->table[qp->ibqp.qp_num % qpt->max];
 for (; (q = *qpp) != ((void*)0); qpp = &q->next) {
  if (q == qp) {
   *qpp = qp->next;
   qp->next = ((void*)0);
   atomic_dec(&qp->refcount);
   break;
  }
 }

 spin_unlock_irqrestore(&qpt->lock, flags);
}
