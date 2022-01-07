
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c2_qp {int dummy; } ;
struct TYPE_2__ {int lock; int idr; } ;
struct c2_dev {TYPE_1__ qp_table; } ;


 struct c2_qp* idr_find (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct c2_qp *c2_find_qpn(struct c2_dev *c2dev, int qpn)
{
 unsigned long flags;
 struct c2_qp *qp;

 spin_lock_irqsave(&c2dev->qp_table.lock, flags);
 qp = idr_find(&c2dev->qp_table.idr, qpn);
 spin_unlock_irqrestore(&c2dev->qp_table.lock, flags);
 return qp;
}
