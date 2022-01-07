
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int wq; } ;
struct TYPE_4__ {int qp_num; } ;
struct qib_qp {scalar_t__ state; int s_flags; struct qib_qp* s_hdr; int s_wq; TYPE_3__ r_rq; TYPE_2__* ip; TYPE_1__ ibqp; int s_lock; int refcount; int wait; int * s_tx; int s_dma_busy; int wait_dma; int s_timer; int s_work; int iowait; } ;
struct qib_ibdev {int n_qps_lock; int n_qps_allocated; int qpn_table; int pending_lock; } ;
struct ib_qp {int device; } ;
struct TYPE_5__ {int ref; } ;


 scalar_t__ IB_QPS_RESET ;
 int QIB_S_ANY_WAIT ;
 int QIB_S_TIMER ;
 int atomic_read (int *) ;
 int cancel_work_sync (int *) ;
 int clear_mr_refs (struct qib_qp*,int) ;
 int del_timer_sync (int *) ;
 int free_qpn (int *,int ) ;
 int kfree (struct qib_qp*) ;
 int kref_put (int *,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int qib_put_txreq (int *) ;
 int qib_release_mmap_info ;
 int remove_qp (struct qib_ibdev*,struct qib_qp*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 struct qib_ibdev* to_idev (int ) ;
 struct qib_qp* to_iqp (struct ib_qp*) ;
 int vfree (int ) ;
 int wait_event (int ,int) ;

int qib_destroy_qp(struct ib_qp *ibqp)
{
 struct qib_qp *qp = to_iqp(ibqp);
 struct qib_ibdev *dev = to_idev(ibqp->device);


 spin_lock_irq(&qp->s_lock);
 if (qp->state != IB_QPS_RESET) {
  qp->state = IB_QPS_RESET;
  spin_lock(&dev->pending_lock);
  if (!list_empty(&qp->iowait))
   list_del_init(&qp->iowait);
  spin_unlock(&dev->pending_lock);
  qp->s_flags &= ~(QIB_S_TIMER | QIB_S_ANY_WAIT);
  spin_unlock_irq(&qp->s_lock);
  cancel_work_sync(&qp->s_work);
  del_timer_sync(&qp->s_timer);
  wait_event(qp->wait_dma, !atomic_read(&qp->s_dma_busy));
  if (qp->s_tx) {
   qib_put_txreq(qp->s_tx);
   qp->s_tx = ((void*)0);
  }
  remove_qp(dev, qp);
  wait_event(qp->wait, !atomic_read(&qp->refcount));
  clear_mr_refs(qp, 1);
 } else
  spin_unlock_irq(&qp->s_lock);


 free_qpn(&dev->qpn_table, qp->ibqp.qp_num);
 spin_lock(&dev->n_qps_lock);
 dev->n_qps_allocated--;
 spin_unlock(&dev->n_qps_lock);

 if (qp->ip)
  kref_put(&qp->ip->ref, qib_release_mmap_info);
 else
  vfree(qp->r_rq.wq);
 vfree(qp->s_wq);
 kfree(qp->s_hdr);
 kfree(qp);
 return 0;
}
