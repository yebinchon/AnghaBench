
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ qp_type; int device; } ;
struct TYPE_4__ {scalar_t__ dlid; } ;
struct ipath_qp {int s_flags; size_t state; scalar_t__ s_hdrwords; int s_cur_size; int s_cur_sge; int s_hdr; int s_lock; TYPE_3__ ibqp; TYPE_1__ remote_ah_attr; } ;
struct ipath_ibdev {int n_unicast_xmit; TYPE_2__* dd; } ;
struct TYPE_5__ {scalar_t__ ipath_lid; } ;


 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_UC ;
 int IPATH_PROCESS_OR_FLUSH_SEND ;
 int IPATH_S_ANY_WAIT ;
 int IPATH_S_BUSY ;
 int* ib_ipath_state_ops ;
 int ipath_make_rc_req (struct ipath_qp*) ;
 int ipath_make_uc_req (struct ipath_qp*) ;
 int ipath_make_ud_req (struct ipath_qp*) ;
 scalar_t__ ipath_no_bufs_available (struct ipath_qp*,struct ipath_ibdev*) ;
 int ipath_ruc_loopback (struct ipath_qp*) ;
 scalar_t__ ipath_verbs_send (struct ipath_qp*,int *,scalar_t__,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipath_ibdev* to_idev (int ) ;

void ipath_do_send(unsigned long data)
{
 struct ipath_qp *qp = (struct ipath_qp *)data;
 struct ipath_ibdev *dev = to_idev(qp->ibqp.device);
 int (*make_req)(struct ipath_qp *qp);
 unsigned long flags;

 if ((qp->ibqp.qp_type == IB_QPT_RC ||
      qp->ibqp.qp_type == IB_QPT_UC) &&
     qp->remote_ah_attr.dlid == dev->dd->ipath_lid) {
  ipath_ruc_loopback(qp);
  goto bail;
 }

 if (qp->ibqp.qp_type == IB_QPT_RC)
        make_req = ipath_make_rc_req;
 else if (qp->ibqp.qp_type == IB_QPT_UC)
        make_req = ipath_make_uc_req;
 else
        make_req = ipath_make_ud_req;

 spin_lock_irqsave(&qp->s_lock, flags);


 if ((qp->s_flags & (IPATH_S_BUSY | IPATH_S_ANY_WAIT)) ||
     !(ib_ipath_state_ops[qp->state] & IPATH_PROCESS_OR_FLUSH_SEND)) {
  spin_unlock_irqrestore(&qp->s_lock, flags);
  goto bail;
 }

 qp->s_flags |= IPATH_S_BUSY;

 spin_unlock_irqrestore(&qp->s_lock, flags);

again:

 if (qp->s_hdrwords != 0) {




  if (ipath_verbs_send(qp, &qp->s_hdr, qp->s_hdrwords,
         qp->s_cur_sge, qp->s_cur_size)) {
   if (ipath_no_bufs_available(qp, dev))
    goto bail;
  }
  dev->n_unicast_xmit++;

  qp->s_hdrwords = 0;
 }

 if (make_req(qp))
  goto again;

bail:;
}
