
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int qp_type; } ;
struct qib_qp {size_t state; int r_lock; TYPE_1__ ibqp; } ;
struct qib_ibport {int n_pkt_drops; } ;
struct qib_ib_header {int dummy; } ;
struct qib_ctxtdata {TYPE_2__* ppd; } ;
struct TYPE_4__ {struct qib_ibport ibport_data; } ;







 int QIB_PROCESS_RECV_OK ;
 int ib_qib_disable_sma ;
 int* ib_qib_state_ops ;
 int qib_rc_rcv (struct qib_ctxtdata*,struct qib_ib_header*,int,void*,int ,struct qib_qp*) ;
 int qib_uc_rcv (struct qib_ibport*,struct qib_ib_header*,int,void*,int ,struct qib_qp*) ;
 int qib_ud_rcv (struct qib_ibport*,struct qib_ib_header*,int,void*,int ,struct qib_qp*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void qib_qp_rcv(struct qib_ctxtdata *rcd, struct qib_ib_header *hdr,
         int has_grh, void *data, u32 tlen, struct qib_qp *qp)
{
 struct qib_ibport *ibp = &rcd->ppd->ibport_data;

 spin_lock(&qp->r_lock);


 if (!(ib_qib_state_ops[qp->state] & QIB_PROCESS_RECV_OK)) {
  ibp->n_pkt_drops++;
  goto unlock;
 }

 switch (qp->ibqp.qp_type) {
 case 130:
 case 132:
  if (ib_qib_disable_sma)
   break;

 case 128:
  qib_ud_rcv(ibp, hdr, has_grh, data, tlen, qp);
  break;

 case 131:
  qib_rc_rcv(rcd, hdr, has_grh, data, tlen, qp);
  break;

 case 129:
  qib_uc_rcv(ibp, hdr, has_grh, data, tlen, qp);
  break;

 default:
  break;
 }

unlock:
 spin_unlock(&qp->r_lock);
}
