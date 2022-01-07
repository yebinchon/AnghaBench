
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehca_qp {unsigned int real_qp_num; int list_entries; } ;
struct TYPE_2__ {int device; } ;
struct ehca_cq {int cq_number; TYPE_1__ ib_cq; int spinlock; int * qp_hashtab; } ;


 int QP_HASHTAB_LEN ;
 int ehca_dbg (int ,char*,int ,unsigned int) ;
 int hlist_add_head (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ehca_cq_assign_qp(struct ehca_cq *cq, struct ehca_qp *qp)
{
 unsigned int qp_num = qp->real_qp_num;
 unsigned int key = qp_num & (QP_HASHTAB_LEN-1);
 unsigned long flags;

 spin_lock_irqsave(&cq->spinlock, flags);
 hlist_add_head(&qp->list_entries, &cq->qp_hashtab[key]);
 spin_unlock_irqrestore(&cq->spinlock, flags);

 ehca_dbg(cq->ib_cq.device, "cq_num=%x real_qp_num=%x",
   cq->cq_number, qp_num);

 return 0;
}
