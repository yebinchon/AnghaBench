
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ uobject; } ;
struct TYPE_5__ {int scq; int rcq; } ;
struct iwch_qp {int wq; TYPE_2__ ibqp; TYPE_1__ attr; int rhp; } ;
struct TYPE_7__ {int cq_context; int (* comp_handler ) (TYPE_3__*,int ) ;} ;
struct iwch_cq {int comp_handler_lock; TYPE_3__ ibcq; int cq; } ;


 int __flush_qp (struct iwch_qp*,struct iwch_cq*,struct iwch_cq*) ;
 int cxio_set_cq_in_error (int *) ;
 int cxio_set_wq_in_error (int *) ;
 struct iwch_cq* get_chp (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_3__*,int ) ;
 int stub2 (TYPE_3__*,int ) ;

__attribute__((used)) static void flush_qp(struct iwch_qp *qhp)
{
 struct iwch_cq *rchp, *schp;

 rchp = get_chp(qhp->rhp, qhp->attr.rcq);
 schp = get_chp(qhp->rhp, qhp->attr.scq);

 if (qhp->ibqp.uobject) {
  cxio_set_wq_in_error(&qhp->wq);
  cxio_set_cq_in_error(&rchp->cq);
  spin_lock(&rchp->comp_handler_lock);
  (*rchp->ibcq.comp_handler)(&rchp->ibcq, rchp->ibcq.cq_context);
  spin_unlock(&rchp->comp_handler_lock);
  if (schp != rchp) {
   cxio_set_cq_in_error(&schp->cq);
   spin_lock(&schp->comp_handler_lock);
   (*schp->ibcq.comp_handler)(&schp->ibcq,
         schp->ibcq.cq_context);
   spin_unlock(&schp->comp_handler_lock);
  }
  return;
 }
 __flush_qp(qhp, rchp, schp);
}
