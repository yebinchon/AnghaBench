
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ uobject; } ;
struct TYPE_5__ {int scq; int rcq; } ;
struct c4iw_qp {int wq; TYPE_2__ ibqp; TYPE_1__ attr; int rhp; } ;
struct TYPE_7__ {int cq_context; int (* comp_handler ) (TYPE_3__*,int ) ;} ;
struct c4iw_cq {int comp_handler_lock; TYPE_3__ ibcq; int cq; } ;


 int __flush_qp (struct c4iw_qp*,struct c4iw_cq*,struct c4iw_cq*) ;
 struct c4iw_cq* get_chp (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*,int ) ;
 int stub2 (TYPE_3__*,int ) ;
 int t4_set_cq_in_error (int *) ;
 int t4_set_wq_in_error (int *) ;

__attribute__((used)) static void flush_qp(struct c4iw_qp *qhp)
{
 struct c4iw_cq *rchp, *schp;
 unsigned long flag;

 rchp = get_chp(qhp->rhp, qhp->attr.rcq);
 schp = get_chp(qhp->rhp, qhp->attr.scq);

 if (qhp->ibqp.uobject) {
  t4_set_wq_in_error(&qhp->wq);
  t4_set_cq_in_error(&rchp->cq);
  spin_lock_irqsave(&rchp->comp_handler_lock, flag);
  (*rchp->ibcq.comp_handler)(&rchp->ibcq, rchp->ibcq.cq_context);
  spin_unlock_irqrestore(&rchp->comp_handler_lock, flag);
  if (schp != rchp) {
   t4_set_cq_in_error(&schp->cq);
   spin_lock_irqsave(&schp->comp_handler_lock, flag);
   (*schp->ibcq.comp_handler)(&schp->ibcq,
     schp->ibcq.cq_context);
   spin_unlock_irqrestore(&schp->comp_handler_lock, flag);
  }
  return;
 }
 __flush_qp(qhp, rchp, schp);
}
