
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int wq; } ;
struct TYPE_8__ {int qp_num; } ;
struct ipath_qp {scalar_t__ state; int s_wq; struct ipath_qp* r_ud_sg_list; TYPE_5__ r_rq; TYPE_4__* ip; TYPE_3__ ibqp; int refcount; int wait; TYPE_2__* s_tx; int s_lock; int s_dma_busy; int wait_dma; int s_task; int s_flags; int piowait; int timerwait; } ;
struct ipath_ibdev {int n_qps_lock; int n_qps_allocated; int qp_table; int pending_lock; int txreq_free; } ;
struct ib_qp {int device; } ;
struct TYPE_9__ {int ref; } ;
struct TYPE_6__ {int flags; int list; struct ipath_qp* map_addr; } ;
struct TYPE_7__ {TYPE_1__ txreq; } ;


 scalar_t__ IB_QPS_RESET ;
 int IPATH_SDMA_TXREQ_F_FREEBUF ;
 int IPATH_S_ANY_WAIT ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int free_qpn (int *,int ) ;
 int ipath_free_qp (int *,struct ipath_qp*) ;
 int ipath_release_mmap_info ;
 int kfree (struct ipath_qp*) ;
 int kref_put (int *,int ) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklet_kill (int *) ;
 struct ipath_ibdev* to_idev (int ) ;
 struct ipath_qp* to_iqp (struct ib_qp*) ;
 int vfree (int ) ;
 int wait_event (int ,int) ;

int ipath_destroy_qp(struct ib_qp *ibqp)
{
 struct ipath_qp *qp = to_iqp(ibqp);
 struct ipath_ibdev *dev = to_idev(ibqp->device);


 spin_lock_irq(&qp->s_lock);
 if (qp->state != IB_QPS_RESET) {
  qp->state = IB_QPS_RESET;
  spin_lock(&dev->pending_lock);
  if (!list_empty(&qp->timerwait))
   list_del_init(&qp->timerwait);
  if (!list_empty(&qp->piowait))
   list_del_init(&qp->piowait);
  spin_unlock(&dev->pending_lock);
  qp->s_flags &= ~IPATH_S_ANY_WAIT;
  spin_unlock_irq(&qp->s_lock);

  tasklet_kill(&qp->s_task);
  wait_event(qp->wait_dma, !atomic_read(&qp->s_dma_busy));
 } else
  spin_unlock_irq(&qp->s_lock);

 ipath_free_qp(&dev->qp_table, qp);

 if (qp->s_tx) {
  atomic_dec(&qp->refcount);
  if (qp->s_tx->txreq.flags & IPATH_SDMA_TXREQ_F_FREEBUF)
   kfree(qp->s_tx->txreq.map_addr);
  spin_lock_irq(&dev->pending_lock);
  list_add(&qp->s_tx->txreq.list, &dev->txreq_free);
  spin_unlock_irq(&dev->pending_lock);
  qp->s_tx = ((void*)0);
 }

 wait_event(qp->wait, !atomic_read(&qp->refcount));


 free_qpn(&dev->qp_table, qp->ibqp.qp_num);
 spin_lock(&dev->n_qps_lock);
 dev->n_qps_allocated--;
 spin_unlock(&dev->n_qps_lock);

 if (qp->ip)
  kref_put(&qp->ip->ref, ipath_release_mmap_info);
 else
  vfree(qp->r_rq.wq);
 kfree(qp->r_ud_sg_list);
 vfree(qp->s_wq);
 kfree(qp);
 return 0;
}
