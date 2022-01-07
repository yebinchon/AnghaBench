
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int map_addr; } ;
struct ipath_verbs_txreq {TYPE_2__ txreq; scalar_t__ wqe; struct ipath_qp* qp; } ;
struct TYPE_3__ {int device; } ;
struct ipath_qp {size_t state; scalar_t__ s_last; scalar_t__ s_head; int s_flags; int wait; int refcount; int s_lock; int wait_dma; int s_dma_busy; TYPE_1__ ibqp; } ;
struct ipath_ibdev {int dummy; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;


 int IB_WC_SUCCESS ;
 int IB_WC_WR_FLUSH_ERR ;
 int IPATH_FLUSH_SEND ;
 int IPATH_SDMA_TXREQ_F_FREEBUF ;
 int IPATH_SDMA_TXREQ_S_OK ;
 int IPATH_S_WAIT_DMA ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int* ib_ipath_state_ops ;
 int ipath_schedule_send (struct ipath_qp*) ;
 int ipath_send_complete (struct ipath_qp*,scalar_t__,int) ;
 int kfree (int ) ;
 int put_txreq (struct ipath_ibdev*,struct ipath_verbs_txreq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipath_ibdev* to_idev (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void sdma_complete(void *cookie, int status)
{
 struct ipath_verbs_txreq *tx = cookie;
 struct ipath_qp *qp = tx->qp;
 struct ipath_ibdev *dev = to_idev(qp->ibqp.device);
 unsigned long flags;
 enum ib_wc_status ibs = status == IPATH_SDMA_TXREQ_S_OK ?
  IB_WC_SUCCESS : IB_WC_WR_FLUSH_ERR;

 if (atomic_dec_and_test(&qp->s_dma_busy)) {
  spin_lock_irqsave(&qp->s_lock, flags);
  if (tx->wqe)
   ipath_send_complete(qp, tx->wqe, ibs);
  if ((ib_ipath_state_ops[qp->state] & IPATH_FLUSH_SEND &&
       qp->s_last != qp->s_head) ||
      (qp->s_flags & IPATH_S_WAIT_DMA))
   ipath_schedule_send(qp);
  spin_unlock_irqrestore(&qp->s_lock, flags);
  wake_up(&qp->wait_dma);
 } else if (tx->wqe) {
  spin_lock_irqsave(&qp->s_lock, flags);
  ipath_send_complete(qp, tx->wqe, ibs);
  spin_unlock_irqrestore(&qp->s_lock, flags);
 }

 if (tx->txreq.flags & IPATH_SDMA_TXREQ_F_FREEBUF)
  kfree(tx->txreq.map_addr);
 put_txreq(dev, tx);

 if (atomic_dec_and_test(&qp->refcount))
  wake_up(&qp->wait);
}
