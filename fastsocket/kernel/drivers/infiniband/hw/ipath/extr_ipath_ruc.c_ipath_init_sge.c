
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wc ;
typedef scalar_t__ u32 ;
struct ipath_sge_state {int num_sge; int sge; int * sg_list; } ;
struct ipath_rwqe {int num_sge; int wr_id; TYPE_2__* sg_list; } ;
struct TYPE_3__ {int recv_cq; } ;
struct ipath_qp {TYPE_1__ ibqp; } ;
struct ib_wc {TYPE_1__* qp; int opcode; int status; int wr_id; } ;
struct TYPE_4__ {scalar_t__ length; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_RECV ;
 int ipath_cq_enter (int ,struct ib_wc*,int) ;
 int ipath_lkey_ok (struct ipath_qp*,int *,TYPE_2__*,int ) ;
 int memset (struct ib_wc*,int ,int) ;
 int to_icq (int ) ;

int ipath_init_sge(struct ipath_qp *qp, struct ipath_rwqe *wqe,
     u32 *lengthp, struct ipath_sge_state *ss)
{
 int i, j, ret;
 struct ib_wc wc;

 *lengthp = 0;
 for (i = j = 0; i < wqe->num_sge; i++) {
  if (wqe->sg_list[i].length == 0)
   continue;

  if (!ipath_lkey_ok(qp, j ? &ss->sg_list[j - 1] : &ss->sge,
       &wqe->sg_list[i], IB_ACCESS_LOCAL_WRITE))
   goto bad_lkey;
  *lengthp += wqe->sg_list[i].length;
  j++;
 }
 ss->num_sge = j;
 ret = 1;
 goto bail;

bad_lkey:
 memset(&wc, 0, sizeof(wc));
 wc.wr_id = wqe->wr_id;
 wc.status = IB_WC_LOC_PROT_ERR;
 wc.opcode = IB_WC_RECV;
 wc.qp = &qp->ibqp;

 ipath_cq_enter(to_icq(qp->ibqp.recv_cq), &wc, 1);
 ret = 0;
bail:
 return ret;
}
