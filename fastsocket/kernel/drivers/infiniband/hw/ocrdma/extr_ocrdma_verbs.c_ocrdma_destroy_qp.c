
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int len; scalar_t__ pa; } ;
struct TYPE_4__ {int len; scalar_t__ pa; } ;
struct ocrdma_qp {struct ocrdma_qp* rqe_wr_id_tbl; struct ocrdma_qp* wqe_wr_id_tbl; TYPE_2__ rq; int srq; TYPE_1__ sq; TYPE_3__* rq_cq; TYPE_3__* sq_cq; struct ocrdma_pd* pd; struct ocrdma_dev* dev; } ;
struct ocrdma_pd {scalar_t__ uctx; } ;
struct ocrdma_dev {int dev_lock; } ;
struct ib_qp_attr {int qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_6__ {int cq_lock; } ;


 int IB_QPS_ERR ;
 int IB_QP_STATE ;
 int _ocrdma_modify_qp (struct ib_qp*,struct ib_qp_attr*,int) ;
 struct ocrdma_qp* get_ocrdma_qp (struct ib_qp*) ;
 int kfree (struct ocrdma_qp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocrdma_del_flush_qp (struct ocrdma_qp*) ;
 int ocrdma_del_mmap (scalar_t__,int ,int ) ;
 int ocrdma_del_qpn_map (struct ocrdma_dev*,struct ocrdma_qp*) ;
 int ocrdma_discard_cqes (struct ocrdma_qp*,TYPE_3__*) ;
 int ocrdma_mbx_destroy_qp (struct ocrdma_dev*,struct ocrdma_qp*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ocrdma_destroy_qp(struct ib_qp *ibqp)
{
 int status;
 struct ocrdma_pd *pd;
 struct ocrdma_qp *qp;
 struct ocrdma_dev *dev;
 struct ib_qp_attr attrs;
 int attr_mask = IB_QP_STATE;
 unsigned long flags;

 qp = get_ocrdma_qp(ibqp);
 dev = qp->dev;

 attrs.qp_state = IB_QPS_ERR;
 pd = qp->pd;


 _ocrdma_modify_qp(ibqp, &attrs, attr_mask);





 mutex_lock(&dev->dev_lock);
 status = ocrdma_mbx_destroy_qp(dev, qp);





 spin_lock_irqsave(&qp->sq_cq->cq_lock, flags);
 if (qp->rq_cq && (qp->rq_cq != qp->sq_cq))
  spin_lock(&qp->rq_cq->cq_lock);

 ocrdma_del_qpn_map(dev, qp);

 if (qp->rq_cq && (qp->rq_cq != qp->sq_cq))
  spin_unlock(&qp->rq_cq->cq_lock);
 spin_unlock_irqrestore(&qp->sq_cq->cq_lock, flags);

 if (!pd->uctx) {
  ocrdma_discard_cqes(qp, qp->sq_cq);
  ocrdma_discard_cqes(qp, qp->rq_cq);
 }
 mutex_unlock(&dev->dev_lock);

 if (pd->uctx) {
  ocrdma_del_mmap(pd->uctx, (u64) qp->sq.pa, qp->sq.len);
  if (!qp->srq)
   ocrdma_del_mmap(pd->uctx, (u64) qp->rq.pa, qp->rq.len);
 }

 ocrdma_del_flush_qp(qp);

 kfree(qp->wqe_wr_id_tbl);
 kfree(qp->rqe_wr_id_tbl);
 kfree(qp);
 return status;
}
