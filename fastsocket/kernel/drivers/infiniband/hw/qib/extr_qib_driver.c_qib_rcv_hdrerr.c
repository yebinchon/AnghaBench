
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int qp_type; } ;
struct qib_qp {size_t state; int wait; int refcount; int r_lock; int rspwait; int r_flags; int r_psn; int r_ack_psn; int r_nak_state; TYPE_4__ ibqp; } ;
struct qib_ibport {int n_rc_seqnak; int n_pkt_drops; } ;
struct qib_pportdata {int lmc; int lid; struct qib_ibport ibport_data; } ;
struct qib_other_headers {int * bth; } ;
struct qib_message_header {int dummy; } ;
struct TYPE_5__ {scalar_t__ next_hdr; int version_tclass_flow; } ;
struct TYPE_6__ {TYPE_1__ grh; struct qib_other_headers oth; } ;
struct TYPE_7__ {TYPE_2__ l; struct qib_other_headers oth; } ;
struct qib_ib_header {TYPE_3__ u; int * lrh; } ;
struct qib_ctxtdata {int qp_wait_list; } ;
typedef int __le32 ;


 scalar_t__ IB_GRH_NEXT_HDR ;
 int IB_GRH_VERSION ;
 int IB_GRH_VERSION_SHIFT ;
 int IB_NAK_PSN_ERROR ;
 int IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST ;





 int QIB_LRH_BTH ;
 int QIB_LRH_GRH ;
 int QIB_MULTICAST_LID_BASE ;
 int QIB_MULTICAST_QPN ;
 int QIB_PROCESS_RECV_OK ;
 int QIB_QPN_MASK ;
 int QIB_R_RSP_NAK ;
 int QLOGIC_IB_RHF_H_ICRCERR ;
 int QLOGIC_IB_RHF_H_TIDERR ;
 int QLOGIC_IB_RHF_H_VCRCERR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int* ib_qib_state_ops ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int qib_cmp24 (int,int ) ;
 int qib_hdrget_length_in_bytes (int *) ;
 struct qib_qp* qib_lookup_qpn (struct qib_ibport*,int) ;
 int qib_ruc_check_hdr (struct qib_ibport*,struct qib_ib_header*,int,struct qib_qp*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static u32 qib_rcv_hdrerr(struct qib_ctxtdata *rcd, struct qib_pportdata *ppd,
     u32 ctxt, u32 eflags, u32 l, u32 etail,
     __le32 *rhf_addr, struct qib_message_header *rhdr)
{
 u32 ret = 0;

 if (eflags & (QLOGIC_IB_RHF_H_ICRCERR | QLOGIC_IB_RHF_H_VCRCERR))
  ret = 1;
 else if (eflags == QLOGIC_IB_RHF_H_TIDERR) {

  struct qib_ib_header *hdr = (struct qib_ib_header *) rhdr;
  struct qib_other_headers *ohdr = ((void*)0);
  struct qib_ibport *ibp = &ppd->ibport_data;
  struct qib_qp *qp = ((void*)0);
  u32 tlen = qib_hdrget_length_in_bytes(rhf_addr);
  u16 lid = be16_to_cpu(hdr->lrh[1]);
  int lnh = be16_to_cpu(hdr->lrh[0]) & 3;
  u32 qp_num;
  u32 opcode;
  u32 psn;
  int diff;


  if (tlen < 24)
   goto drop;

  if (lid < QIB_MULTICAST_LID_BASE) {
   lid &= ~((1 << ppd->lmc) - 1);
   if (unlikely(lid != ppd->lid))
    goto drop;
  }


  if (lnh == QIB_LRH_BTH)
   ohdr = &hdr->u.oth;
  else if (lnh == QIB_LRH_GRH) {
   u32 vtf;

   ohdr = &hdr->u.l.oth;
   if (hdr->u.l.grh.next_hdr != IB_GRH_NEXT_HDR)
    goto drop;
   vtf = be32_to_cpu(hdr->u.l.grh.version_tclass_flow);
   if ((vtf >> IB_GRH_VERSION_SHIFT) != IB_GRH_VERSION)
    goto drop;
  } else
   goto drop;


  opcode = be32_to_cpu(ohdr->bth[0]);
  opcode >>= 24;
  psn = be32_to_cpu(ohdr->bth[2]);


  qp_num = be32_to_cpu(ohdr->bth[1]) & QIB_QPN_MASK;
  if (qp_num != QIB_MULTICAST_QPN) {
   int ruc_res;
   qp = qib_lookup_qpn(ibp, qp_num);
   if (!qp)
    goto drop;





   spin_lock(&qp->r_lock);


   if (!(ib_qib_state_ops[qp->state] &
         QIB_PROCESS_RECV_OK)) {
    ibp->n_pkt_drops++;
    goto unlock;
   }

   switch (qp->ibqp.qp_type) {
   case 131:
    ruc_res =
     qib_ruc_check_hdr(
      ibp, hdr,
      lnh == QIB_LRH_GRH,
      qp,
      be32_to_cpu(ohdr->bth[0]));
    if (ruc_res)
     goto unlock;


    if (opcode <
        IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST) {
     diff = qib_cmp24(psn, qp->r_psn);
     if (!qp->r_nak_state && diff >= 0) {
      ibp->n_rc_seqnak++;
      qp->r_nak_state =
       IB_NAK_PSN_ERROR;

      qp->r_ack_psn = qp->r_psn;
      if (list_empty(&qp->rspwait)) {
       qp->r_flags |=
        QIB_R_RSP_NAK;
       atomic_inc(
        &qp->refcount);
       list_add_tail(
        &qp->rspwait,
        &rcd->qp_wait_list);
      }
     }
    }
    break;
   case 130:
   case 132:
   case 128:
   case 129:
   default:

    break;
   }

unlock:
   spin_unlock(&qp->r_lock);




   if (atomic_dec_and_test(&qp->refcount))
    wake_up(&qp->wait);
  }
 }

drop:
 return ret;
}
