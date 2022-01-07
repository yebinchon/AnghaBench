
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int qp_type; scalar_t__ srq; int recv_cq; int send_cq; int qp_context; int event_handler; } ;
struct TYPE_4__ {int size; int max_sge; } ;
struct ipath_qp {int s_flags; TYPE_3__ ibqp; int s_rnr_retry_cnt; int s_retry_cnt; int timeout; int r_min_rnr_timer; int r_max_rd_atomic; int s_max_rd_atomic; int s_draining; int s_pkey_index; int remote_ah_attr; TYPE_1__ r_rq; int s_max_sge; scalar_t__ s_size; int qp_access_flags; int remote_qpn; int s_next_psn; int r_psn; int qkey; int path_mtu; int state; } ;
struct TYPE_5__ {int max_recv_wr; scalar_t__ max_inline_data; int max_recv_sge; int max_send_sge; scalar_t__ max_send_wr; } ;
struct ib_qp_init_attr {int port_num; int qp_type; int sq_sig_type; TYPE_2__ cap; scalar_t__ srq; int recv_cq; int send_cq; int qp_context; int event_handler; } ;
struct ib_qp_attr {int port_num; TYPE_2__ cap; scalar_t__ alt_timeout; scalar_t__ alt_port_num; int rnr_retry; int retry_cnt; int timeout; int min_rnr_timer; int max_dest_rd_atomic; int max_rd_atomic; int sq_draining; scalar_t__ en_sqd_async_notify; scalar_t__ alt_pkey_index; int pkey_index; int alt_ah_attr; int ah_attr; int qp_access_flags; int dest_qp_num; int sq_psn; int rq_psn; int qkey; scalar_t__ path_mig_state; int path_mtu; int qp_state; int cur_qp_state; } ;
struct ib_qp {int dummy; } ;


 int IB_SIGNAL_ALL_WR ;
 int IB_SIGNAL_REQ_WR ;
 int IPATH_S_SIGNAL_REQ_WR ;
 int memset (int *,int ,int) ;
 struct ipath_qp* to_iqp (struct ib_qp*) ;

int ipath_query_qp(struct ib_qp *ibqp, struct ib_qp_attr *attr,
     int attr_mask, struct ib_qp_init_attr *init_attr)
{
 struct ipath_qp *qp = to_iqp(ibqp);

 attr->qp_state = qp->state;
 attr->cur_qp_state = attr->qp_state;
 attr->path_mtu = qp->path_mtu;
 attr->path_mig_state = 0;
 attr->qkey = qp->qkey;
 attr->rq_psn = qp->r_psn;
 attr->sq_psn = qp->s_next_psn;
 attr->dest_qp_num = qp->remote_qpn;
 attr->qp_access_flags = qp->qp_access_flags;
 attr->cap.max_send_wr = qp->s_size - 1;
 attr->cap.max_recv_wr = qp->ibqp.srq ? 0 : qp->r_rq.size - 1;
 attr->cap.max_send_sge = qp->s_max_sge;
 attr->cap.max_recv_sge = qp->r_rq.max_sge;
 attr->cap.max_inline_data = 0;
 attr->ah_attr = qp->remote_ah_attr;
 memset(&attr->alt_ah_attr, 0, sizeof(attr->alt_ah_attr));
 attr->pkey_index = qp->s_pkey_index;
 attr->alt_pkey_index = 0;
 attr->en_sqd_async_notify = 0;
 attr->sq_draining = qp->s_draining;
 attr->max_rd_atomic = qp->s_max_rd_atomic;
 attr->max_dest_rd_atomic = qp->r_max_rd_atomic;
 attr->min_rnr_timer = qp->r_min_rnr_timer;
 attr->port_num = 1;
 attr->timeout = qp->timeout;
 attr->retry_cnt = qp->s_retry_cnt;
 attr->rnr_retry = qp->s_rnr_retry_cnt;
 attr->alt_port_num = 0;
 attr->alt_timeout = 0;

 init_attr->event_handler = qp->ibqp.event_handler;
 init_attr->qp_context = qp->ibqp.qp_context;
 init_attr->send_cq = qp->ibqp.send_cq;
 init_attr->recv_cq = qp->ibqp.recv_cq;
 init_attr->srq = qp->ibqp.srq;
 init_attr->cap = attr->cap;
 if (qp->s_flags & IPATH_S_SIGNAL_REQ_WR)
  init_attr->sq_sig_type = IB_SIGNAL_REQ_WR;
 else
  init_attr->sq_sig_type = IB_SIGNAL_ALL_WR;
 init_attr->qp_type = qp->ibqp.qp_type;
 init_attr->port_num = 1;
 return 0;
}
