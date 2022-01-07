
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wc ;
typedef scalar_t__ u32 ;
struct qib_rwq {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_4__ {scalar_t__ event_handler; int recv_cq; int device; } ;
struct TYPE_6__ {scalar_t__ size; int lock; struct qib_rwq* wq; } ;
struct qib_qp {scalar_t__ state; int s_flags; scalar_t__ s_last; scalar_t__ s_head; TYPE_1__ ibqp; TYPE_3__ r_rq; int r_wr_id; int r_aflags; int * s_tx; int * s_rdma_mr; scalar_t__ s_hdrwords; int iowait; int s_timer; } ;
struct qib_ibdev {int pending_lock; } ;
struct ib_wc {int status; int wr_id; int opcode; TYPE_1__* qp; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
struct TYPE_5__ {int wr_id; } ;


 scalar_t__ IB_QPS_ERR ;
 scalar_t__ IB_QPS_RESET ;
 int IB_WC_RECV ;
 int IB_WC_WR_FLUSH_ERR ;
 int QIB_R_WRID_VALID ;
 int QIB_S_ANY_WAIT_IO ;
 int QIB_S_ANY_WAIT_SEND ;
 int QIB_S_BUSY ;
 int QIB_S_TIMER ;
 int QIB_S_WAIT_RNR ;
 int clear_mr_refs (struct qib_qp*,int ) ;
 int del_timer (int *) ;
 TYPE_2__* get_rwqe_ptr (TYPE_3__*,scalar_t__) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int memset (struct ib_wc*,int ,int) ;
 int qib_cq_enter (int ,struct ib_wc*,int) ;
 int qib_put_mr (int *) ;
 int qib_put_txreq (int *) ;
 int qib_schedule_send (struct qib_qp*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int to_icq (int ) ;
 struct qib_ibdev* to_idev (int ) ;

int qib_error_qp(struct qib_qp *qp, enum ib_wc_status err)
{
 struct qib_ibdev *dev = to_idev(qp->ibqp.device);
 struct ib_wc wc;
 int ret = 0;

 if (qp->state == IB_QPS_ERR || qp->state == IB_QPS_RESET)
  goto bail;

 qp->state = IB_QPS_ERR;

 if (qp->s_flags & (QIB_S_TIMER | QIB_S_WAIT_RNR)) {
  qp->s_flags &= ~(QIB_S_TIMER | QIB_S_WAIT_RNR);
  del_timer(&qp->s_timer);
 }

 if (qp->s_flags & QIB_S_ANY_WAIT_SEND)
  qp->s_flags &= ~QIB_S_ANY_WAIT_SEND;

 spin_lock(&dev->pending_lock);
 if (!list_empty(&qp->iowait) && !(qp->s_flags & QIB_S_BUSY)) {
  qp->s_flags &= ~QIB_S_ANY_WAIT_IO;
  list_del_init(&qp->iowait);
 }
 spin_unlock(&dev->pending_lock);

 if (!(qp->s_flags & QIB_S_BUSY)) {
  qp->s_hdrwords = 0;
  if (qp->s_rdma_mr) {
   qib_put_mr(qp->s_rdma_mr);
   qp->s_rdma_mr = ((void*)0);
  }
  if (qp->s_tx) {
   qib_put_txreq(qp->s_tx);
   qp->s_tx = ((void*)0);
  }
 }


 if (qp->s_last != qp->s_head)
  qib_schedule_send(qp);

 clear_mr_refs(qp, 0);

 memset(&wc, 0, sizeof(wc));
 wc.qp = &qp->ibqp;
 wc.opcode = IB_WC_RECV;

 if (test_and_clear_bit(QIB_R_WRID_VALID, &qp->r_aflags)) {
  wc.wr_id = qp->r_wr_id;
  wc.status = err;
  qib_cq_enter(to_icq(qp->ibqp.recv_cq), &wc, 1);
 }
 wc.status = IB_WC_WR_FLUSH_ERR;

 if (qp->r_rq.wq) {
  struct qib_rwq *wq;
  u32 head;
  u32 tail;

  spin_lock(&qp->r_rq.lock);


  wq = qp->r_rq.wq;
  head = wq->head;
  if (head >= qp->r_rq.size)
   head = 0;
  tail = wq->tail;
  if (tail >= qp->r_rq.size)
   tail = 0;
  while (tail != head) {
   wc.wr_id = get_rwqe_ptr(&qp->r_rq, tail)->wr_id;
   if (++tail >= qp->r_rq.size)
    tail = 0;
   qib_cq_enter(to_icq(qp->ibqp.recv_cq), &wc, 1);
  }
  wq->tail = tail;

  spin_unlock(&qp->r_rq.lock);
 } else if (qp->ibqp.event_handler)
  ret = 1;

bail:
 return ret;
}
