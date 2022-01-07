
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ipath_qp_table {size_t max; int lock; struct ipath_qp** table; } ;
struct TYPE_2__ {size_t qp_num; } ;
struct ipath_qp {int refcount; TYPE_1__ ibqp; struct ipath_qp* next; } ;


 int atomic_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ipath_qp *ipath_lookup_qpn(struct ipath_qp_table *qpt, u32 qpn)
{
 unsigned long flags;
 struct ipath_qp *qp;

 spin_lock_irqsave(&qpt->lock, flags);

 for (qp = qpt->table[qpn % qpt->max]; qp; qp = qp->next) {
  if (qp->ibqp.qp_num == qpn) {
   atomic_inc(&qp->refcount);
   break;
  }
 }

 spin_unlock_irqrestore(&qpt->lock, flags);
 return qp;
}
