
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wc ;
struct qib_sge {int mr; } ;
struct qib_sge_state {int num_sge; scalar_t__ total_len; struct qib_sge sge; struct qib_sge* sg_list; } ;
struct qib_rwqe {int num_sge; int wr_id; TYPE_4__* sg_list; } ;
struct TYPE_6__ {int recv_cq; int pd; TYPE_1__* srq; int device; } ;
struct qib_qp {scalar_t__ r_len; TYPE_2__ ibqp; struct qib_sge* r_sg_list; struct qib_sge_state r_sge; } ;
struct qib_pd {int dummy; } ;
struct qib_lkey_table {int dummy; } ;
struct ib_wc {TYPE_2__* qp; int opcode; int status; int wr_id; } ;
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_7__ {struct qib_lkey_table lk_table; } ;
struct TYPE_5__ {int pd; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_RECV ;
 int memset (struct ib_wc*,int ,int) ;
 int qib_cq_enter (int ,struct ib_wc*,int) ;
 int qib_lkey_ok (struct qib_lkey_table*,struct qib_pd*,struct qib_sge*,TYPE_4__*,int ) ;
 int qib_put_mr (int ) ;
 int to_icq (int ) ;
 TYPE_3__* to_idev (int ) ;
 struct qib_pd* to_ipd (int ) ;

__attribute__((used)) static int qib_init_sge(struct qib_qp *qp, struct qib_rwqe *wqe)
{
 int i, j, ret;
 struct ib_wc wc;
 struct qib_lkey_table *rkt;
 struct qib_pd *pd;
 struct qib_sge_state *ss;

 rkt = &to_idev(qp->ibqp.device)->lk_table;
 pd = to_ipd(qp->ibqp.srq ? qp->ibqp.srq->pd : qp->ibqp.pd);
 ss = &qp->r_sge;
 ss->sg_list = qp->r_sg_list;
 qp->r_len = 0;
 for (i = j = 0; i < wqe->num_sge; i++) {
  if (wqe->sg_list[i].length == 0)
   continue;

  if (!qib_lkey_ok(rkt, pd, j ? &ss->sg_list[j - 1] : &ss->sge,
     &wqe->sg_list[i], IB_ACCESS_LOCAL_WRITE))
   goto bad_lkey;
  qp->r_len += wqe->sg_list[i].length;
  j++;
 }
 ss->num_sge = j;
 ss->total_len = qp->r_len;
 ret = 1;
 goto bail;

bad_lkey:
 while (j) {
  struct qib_sge *sge = --j ? &ss->sg_list[j - 1] : &ss->sge;

  qib_put_mr(sge->mr);
 }
 ss->num_sge = 0;
 memset(&wc, 0, sizeof(wc));
 wc.wr_id = wqe->wr_id;
 wc.status = IB_WC_LOC_PROT_ERR;
 wc.opcode = IB_WC_RECV;
 wc.qp = &qp->ibqp;

 qib_cq_enter(to_icq(qp->ibqp.recv_cq), &wc, 1);
 ret = 0;
bail:
 return ret;
}
