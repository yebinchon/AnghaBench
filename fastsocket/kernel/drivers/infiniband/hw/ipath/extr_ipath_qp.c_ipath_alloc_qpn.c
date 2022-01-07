
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_qp_table {int max; int lock; struct ipath_qp** table; } ;
struct TYPE_2__ {int qp_num; } ;
struct ipath_qp {int refcount; struct ipath_qp* next; TYPE_1__ ibqp; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int alloc_qpn (struct ipath_qp_table*,int) ;
 int atomic_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ipath_alloc_qpn(struct ipath_qp_table *qpt, struct ipath_qp *qp,
      enum ib_qp_type type)
{
 unsigned long flags;
 int ret;

 ret = alloc_qpn(qpt, type);
 if (ret < 0)
  goto bail;
 qp->ibqp.qp_num = ret;


 spin_lock_irqsave(&qpt->lock, flags);

 ret %= qpt->max;
 qp->next = qpt->table[ret];
 qpt->table[ret] = qp;
 atomic_inc(&qp->refcount);

 spin_unlock_irqrestore(&qpt->lock, flags);
 ret = 0;

bail:
 return ret;
}
