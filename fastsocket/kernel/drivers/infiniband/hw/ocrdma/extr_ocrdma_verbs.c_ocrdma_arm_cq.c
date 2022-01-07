
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ocrdma_dev {int dummy; } ;
struct ocrdma_cqe {int dummy; } ;
struct ocrdma_cq {int id; int armed; int solicited; int getp; int arm_needed; int cq_lock; struct ocrdma_cqe* va; struct ocrdma_dev* dev; } ;
struct ib_cq {int dummy; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;


 int IB_CQ_NEXT_COMP ;
 int IB_CQ_SOLICITED ;
 struct ocrdma_cq* get_ocrdma_cq (struct ib_cq*) ;
 int is_cqe_valid (struct ocrdma_cq*,struct ocrdma_cqe*) ;
 int ocrdma_ring_cq_db (struct ocrdma_dev*,int,int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ocrdma_arm_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags cq_flags)
{
 struct ocrdma_cq *cq;
 unsigned long flags;
 struct ocrdma_dev *dev;
 u16 cq_id;
 u16 cur_getp;
 struct ocrdma_cqe *cqe;

 cq = get_ocrdma_cq(ibcq);
 cq_id = cq->id;
 dev = cq->dev;

 spin_lock_irqsave(&cq->cq_lock, flags);
 if (cq_flags & IB_CQ_NEXT_COMP || cq_flags & IB_CQ_SOLICITED)
  cq->armed = 1;
 if (cq_flags & IB_CQ_SOLICITED)
  cq->solicited = 1;

 cur_getp = cq->getp;
 cqe = cq->va + cur_getp;





 if (!is_cqe_valid(cq, cqe) || cq->arm_needed) {
  cq->arm_needed = 0;
  ocrdma_ring_cq_db(dev, cq_id, cq->armed, cq->solicited, 0);
 }
 spin_unlock_irqrestore(&cq->cq_lock, flags);
 return 0;
}
