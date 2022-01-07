
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ opcode; } ;
struct ipath_swqe {TYPE_2__ wr; } ;
struct TYPE_3__ {int device; } ;
struct ipath_qp {scalar_t__ s_retry; int s_psn; int piowait; int timerwait; TYPE_1__ ibqp; int s_last; } ;
struct ipath_ibdev {scalar_t__ n_rc_resends; int pending_lock; } ;


 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_WR_FLUSH_ERR ;
 scalar_t__ IB_WR_RDMA_READ ;
 int IPATH_PSN_MASK ;
 struct ipath_swqe* get_swqe_ptr (struct ipath_qp*,int ) ;
 int ipath_error_qp (struct ipath_qp*,int ) ;
 int ipath_schedule_send (struct ipath_qp*) ;
 int ipath_send_complete (struct ipath_qp*,struct ipath_swqe*,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int reset_psn (struct ipath_qp*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct ipath_ibdev* to_idev (int ) ;

void ipath_restart_rc(struct ipath_qp *qp, u32 psn)
{
 struct ipath_swqe *wqe = get_swqe_ptr(qp, qp->s_last);
 struct ipath_ibdev *dev;

 if (qp->s_retry == 0) {
  ipath_send_complete(qp, wqe, IB_WC_RETRY_EXC_ERR);
  ipath_error_qp(qp, IB_WC_WR_FLUSH_ERR);
  goto bail;
 }
 qp->s_retry--;





 dev = to_idev(qp->ibqp.device);
 spin_lock(&dev->pending_lock);
 if (!list_empty(&qp->timerwait))
  list_del_init(&qp->timerwait);
 if (!list_empty(&qp->piowait))
  list_del_init(&qp->piowait);
 spin_unlock(&dev->pending_lock);

 if (wqe->wr.opcode == IB_WR_RDMA_READ)
  dev->n_rc_resends++;
 else
  dev->n_rc_resends += (qp->s_psn - psn) & IPATH_PSN_MASK;

 reset_psn(qp, psn);
 ipath_schedule_send(qp);

bail:
 return;
}
