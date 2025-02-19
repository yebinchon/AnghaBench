
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_22__ {int swap; scalar_t__ compare_add; int rkey; int remote_addr; } ;
struct TYPE_21__ {int rkey; int remote_addr; } ;
struct TYPE_23__ {TYPE_4__ atomic; TYPE_3__ rdma; } ;
struct TYPE_20__ {int imm_data; } ;
struct TYPE_15__ {int opcode; int send_flags; TYPE_5__ wr; scalar_t__ num_sge; TYPE_2__ ex; } ;
struct ipath_swqe {int length; TYPE_10__ wr; struct ipath_sge* sg_list; } ;
struct ipath_sge {scalar_t__ length; scalar_t__ sge_length; scalar_t__ n; scalar_t__ m; TYPE_8__* mr; scalar_t__ vaddr; } ;
struct TYPE_17__ {scalar_t__ qp_type; int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; int recv_cq; } ;
struct TYPE_27__ {int sl; int dlid; } ;
struct TYPE_18__ {struct ipath_sge* sg_list; scalar_t__ num_sge; struct ipath_sge sge; } ;
struct ipath_qp {int s_flags; size_t state; scalar_t__ s_last; scalar_t__ s_head; scalar_t__ s_cur; scalar_t__ s_size; int s_len; int qp_access_flags; scalar_t__ s_rnr_retry; scalar_t__ s_rnr_retry_cnt; size_t r_min_rnr_timer; int wait; int refcount; int s_lock; TYPE_12__ ibqp; int s_rnr_timeout; TYPE_9__ remote_ah_attr; int remote_qpn; int r_wr_id; int r_aflags; TYPE_13__ s_sge; TYPE_13__ r_sge; } ;
struct ipath_ibdev {int n_rnr_naks; int n_pkt_drops; int qp_table; } ;
struct TYPE_19__ {int imm_data; } ;
struct ib_wc {int byte_len; int port_num; void* status; int sl; int slid; int src_qp; TYPE_12__* qp; int wr_id; int opcode; TYPE_1__ ex; void* wc_flags; } ;
struct TYPE_16__ {TYPE_12__* qp; } ;
struct ib_event {int event; TYPE_11__ element; int device; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
typedef int atomic64_t ;
struct TYPE_26__ {scalar_t__ mapsz; TYPE_7__** map; } ;
struct TYPE_25__ {TYPE_6__* segs; } ;
struct TYPE_24__ {scalar_t__ length; scalar_t__ vaddr; } ;


 int BUG_ON (int) ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_EVENT_QP_LAST_WQE_REACHED ;
 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_UC ;
 int IB_SEND_SOLICITED ;
 void* IB_WC_LOC_PROT_ERR ;
 void* IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_RECV ;
 int IB_WC_RECV_RDMA_WITH_IMM ;
 int IB_WC_REM_ACCESS_ERR ;
 int IB_WC_REM_INV_REQ_ERR ;
 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_RNR_RETRY_EXC_ERR ;
 void* IB_WC_SUCCESS ;
 void* IB_WC_WITH_IMM ;
 int IB_WC_WR_FLUSH_ERR ;







 int IPATH_FLUSH_SEND ;
 int IPATH_PROCESS_NEXT_SEND_OK ;
 int IPATH_PROCESS_OR_FLUSH_SEND ;
 int IPATH_PROCESS_RECV_OK ;
 int IPATH_R_WRID_VALID ;
 scalar_t__ IPATH_SEGSZ ;
 int IPATH_S_ANY_WAIT ;
 int IPATH_S_BUSY ;
 int IPATH_S_WAITING ;
 int atomic64_add_return (scalar_t__,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int cmpxchg (scalar_t__*,scalar_t__,int ) ;
 struct ipath_swqe* get_swqe_ptr (struct ipath_qp*,scalar_t__) ;
 int * ib_ipath_rnr_table ;
 int* ib_ipath_state_ops ;
 int ipath_copy_sge (TYPE_13__*,scalar_t__,scalar_t__) ;
 int ipath_cq_enter (int ,struct ib_wc*,int) ;
 int ipath_error_qp (struct ipath_qp*,int) ;
 int ipath_get_rwqe (struct ipath_qp*,int) ;
 int ipath_insert_rnr_queue (struct ipath_qp*) ;
 struct ipath_qp* ipath_lookup_qpn (int *,int ) ;
 int ipath_rc_error (struct ipath_qp*,void*) ;
 int ipath_rkey_ok (struct ipath_qp*,TYPE_13__*,int,int ,int ,int) ;
 int ipath_send_complete (struct ipath_qp*,struct ipath_swqe*,int) ;
 int memset (struct ib_wc*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ib_event*,int ) ;
 int test_and_clear_bit (int ,int *) ;
 int to_icq (int ) ;
 struct ipath_ibdev* to_idev (int ) ;
 int unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void ipath_ruc_loopback(struct ipath_qp *sqp)
{
 struct ipath_ibdev *dev = to_idev(sqp->ibqp.device);
 struct ipath_qp *qp;
 struct ipath_swqe *wqe;
 struct ipath_sge *sge;
 unsigned long flags;
 struct ib_wc wc;
 u64 sdata;
 atomic64_t *maddr;
 enum ib_wc_status send_status;





 qp = ipath_lookup_qpn(&dev->qp_table, sqp->remote_qpn);

 spin_lock_irqsave(&sqp->s_lock, flags);


 if ((sqp->s_flags & (IPATH_S_BUSY | IPATH_S_ANY_WAIT)) ||
     !(ib_ipath_state_ops[sqp->state] & IPATH_PROCESS_OR_FLUSH_SEND))
  goto unlock;

 sqp->s_flags |= IPATH_S_BUSY;

again:
 if (sqp->s_last == sqp->s_head)
  goto clr_busy;
 wqe = get_swqe_ptr(sqp, sqp->s_last);


 if (!(ib_ipath_state_ops[sqp->state] & IPATH_PROCESS_NEXT_SEND_OK)) {
  if (!(ib_ipath_state_ops[sqp->state] & IPATH_FLUSH_SEND))
   goto clr_busy;

  send_status = IB_WC_WR_FLUSH_ERR;
  goto flush_send;
 }






 if (sqp->s_last == sqp->s_cur) {
  if (++sqp->s_cur >= sqp->s_size)
   sqp->s_cur = 0;
 }
 spin_unlock_irqrestore(&sqp->s_lock, flags);

 if (!qp || !(ib_ipath_state_ops[qp->state] & IPATH_PROCESS_RECV_OK)) {
  dev->n_pkt_drops++;




  if (sqp->ibqp.qp_type == IB_QPT_RC)
   send_status = IB_WC_RETRY_EXC_ERR;
  else
   send_status = IB_WC_SUCCESS;
  goto serr;
 }

 memset(&wc, 0, sizeof wc);
 send_status = IB_WC_SUCCESS;

 sqp->s_sge.sge = wqe->sg_list[0];
 sqp->s_sge.sg_list = wqe->sg_list + 1;
 sqp->s_sge.num_sge = wqe->wr.num_sge;
 sqp->s_len = wqe->length;
 switch (wqe->wr.opcode) {
 case 128:
  wc.wc_flags = IB_WC_WITH_IMM;
  wc.ex.imm_data = wqe->wr.ex.imm_data;

 case 129:
  if (!ipath_get_rwqe(qp, 0))
   goto rnr_nak;
  break;

 case 130:
  if (unlikely(!(qp->qp_access_flags & IB_ACCESS_REMOTE_WRITE)))
   goto inv_err;
  wc.wc_flags = IB_WC_WITH_IMM;
  wc.ex.imm_data = wqe->wr.ex.imm_data;
  if (!ipath_get_rwqe(qp, 1))
   goto rnr_nak;

 case 131:
  if (unlikely(!(qp->qp_access_flags & IB_ACCESS_REMOTE_WRITE)))
   goto inv_err;
  if (wqe->length == 0)
   break;
  if (unlikely(!ipath_rkey_ok(qp, &qp->r_sge, wqe->length,
         wqe->wr.wr.rdma.remote_addr,
         wqe->wr.wr.rdma.rkey,
         IB_ACCESS_REMOTE_WRITE)))
   goto acc_err;
  break;

 case 132:
  if (unlikely(!(qp->qp_access_flags & IB_ACCESS_REMOTE_READ)))
   goto inv_err;
  if (unlikely(!ipath_rkey_ok(qp, &sqp->s_sge, wqe->length,
         wqe->wr.wr.rdma.remote_addr,
         wqe->wr.wr.rdma.rkey,
         IB_ACCESS_REMOTE_READ)))
   goto acc_err;
  qp->r_sge.sge = wqe->sg_list[0];
  qp->r_sge.sg_list = wqe->sg_list + 1;
  qp->r_sge.num_sge = wqe->wr.num_sge;
  break;

 case 134:
 case 133:
  if (unlikely(!(qp->qp_access_flags & IB_ACCESS_REMOTE_ATOMIC)))
   goto inv_err;
  if (unlikely(!ipath_rkey_ok(qp, &qp->r_sge, sizeof(u64),
         wqe->wr.wr.atomic.remote_addr,
         wqe->wr.wr.atomic.rkey,
         IB_ACCESS_REMOTE_ATOMIC)))
   goto acc_err;

  maddr = (atomic64_t *) qp->r_sge.sge.vaddr;
  sdata = wqe->wr.wr.atomic.compare_add;
  *(u64 *) sqp->s_sge.sge.vaddr =
   (wqe->wr.opcode == 133) ?
   (u64) atomic64_add_return(sdata, maddr) - sdata :
   (u64) cmpxchg((u64 *) qp->r_sge.sge.vaddr,
          sdata, wqe->wr.wr.atomic.swap);
  goto send_comp;

 default:
  send_status = IB_WC_LOC_QP_OP_ERR;
  goto serr;
 }

 sge = &sqp->s_sge.sge;
 while (sqp->s_len) {
  u32 len = sqp->s_len;

  if (len > sge->length)
   len = sge->length;
  if (len > sge->sge_length)
   len = sge->sge_length;
  BUG_ON(len == 0);
  ipath_copy_sge(&qp->r_sge, sge->vaddr, len);
  sge->vaddr += len;
  sge->length -= len;
  sge->sge_length -= len;
  if (sge->sge_length == 0) {
   if (--sqp->s_sge.num_sge)
    *sge = *sqp->s_sge.sg_list++;
  } else if (sge->length == 0 && sge->mr != ((void*)0)) {
   if (++sge->n >= IPATH_SEGSZ) {
    if (++sge->m >= sge->mr->mapsz)
     break;
    sge->n = 0;
   }
   sge->vaddr =
    sge->mr->map[sge->m]->segs[sge->n].vaddr;
   sge->length =
    sge->mr->map[sge->m]->segs[sge->n].length;
  }
  sqp->s_len -= len;
 }

 if (!test_and_clear_bit(IPATH_R_WRID_VALID, &qp->r_aflags))
  goto send_comp;

 if (wqe->wr.opcode == 130)
  wc.opcode = IB_WC_RECV_RDMA_WITH_IMM;
 else
  wc.opcode = IB_WC_RECV;
 wc.wr_id = qp->r_wr_id;
 wc.status = IB_WC_SUCCESS;
 wc.byte_len = wqe->length;
 wc.qp = &qp->ibqp;
 wc.src_qp = qp->remote_qpn;
 wc.slid = qp->remote_ah_attr.dlid;
 wc.sl = qp->remote_ah_attr.sl;
 wc.port_num = 1;

 ipath_cq_enter(to_icq(qp->ibqp.recv_cq), &wc,
         wqe->wr.send_flags & IB_SEND_SOLICITED);

send_comp:
 spin_lock_irqsave(&sqp->s_lock, flags);
flush_send:
 sqp->s_rnr_retry = sqp->s_rnr_retry_cnt;
 ipath_send_complete(sqp, wqe, send_status);
 goto again;

rnr_nak:

 if (qp->ibqp.qp_type == IB_QPT_UC)
  goto send_comp;




 if (sqp->s_rnr_retry == 0) {
  send_status = IB_WC_RNR_RETRY_EXC_ERR;
  goto serr;
 }
 if (sqp->s_rnr_retry_cnt < 7)
  sqp->s_rnr_retry--;
 spin_lock_irqsave(&sqp->s_lock, flags);
 if (!(ib_ipath_state_ops[sqp->state] & IPATH_PROCESS_RECV_OK))
  goto clr_busy;
 sqp->s_flags |= IPATH_S_WAITING;
 dev->n_rnr_naks++;
 sqp->s_rnr_timeout = ib_ipath_rnr_table[qp->r_min_rnr_timer];
 ipath_insert_rnr_queue(sqp);
 goto clr_busy;

inv_err:
 send_status = IB_WC_REM_INV_REQ_ERR;
 wc.status = IB_WC_LOC_QP_OP_ERR;
 goto err;

acc_err:
 send_status = IB_WC_REM_ACCESS_ERR;
 wc.status = IB_WC_LOC_PROT_ERR;
err:

 ipath_rc_error(qp, wc.status);

serr:
 spin_lock_irqsave(&sqp->s_lock, flags);
 ipath_send_complete(sqp, wqe, send_status);
 if (sqp->ibqp.qp_type == IB_QPT_RC) {
  int lastwqe = ipath_error_qp(sqp, IB_WC_WR_FLUSH_ERR);

  sqp->s_flags &= ~IPATH_S_BUSY;
  spin_unlock_irqrestore(&sqp->s_lock, flags);
  if (lastwqe) {
   struct ib_event ev;

   ev.device = sqp->ibqp.device;
   ev.element.qp = &sqp->ibqp;
   ev.event = IB_EVENT_QP_LAST_WQE_REACHED;
   sqp->ibqp.event_handler(&ev, sqp->ibqp.qp_context);
  }
  goto done;
 }
clr_busy:
 sqp->s_flags &= ~IPATH_S_BUSY;
unlock:
 spin_unlock_irqrestore(&sqp->s_lock, flags);
done:
 if (qp && atomic_dec_and_test(&qp->refcount))
  wake_up(&qp->wait);
}
