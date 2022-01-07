
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocrdma_qp {scalar_t__ qp_type; int qkey; } ;
struct ocrdma_hdr_wqe {int dummy; } ;
struct ocrdma_ewqe_ud_hdr {int rsvd_ahid; int qkey; int rsvd_dest_qpn; } ;
struct ocrdma_ah {int id; } ;
struct TYPE_3__ {int remote_qkey; int remote_qpn; int ah; } ;
struct TYPE_4__ {TYPE_1__ ud; } ;
struct ib_send_wr {TYPE_2__ wr; } ;


 scalar_t__ IB_QPT_GSI ;
 struct ocrdma_ah* get_ocrdma_ah (int ) ;

__attribute__((used)) static void ocrdma_build_ud_hdr(struct ocrdma_qp *qp,
    struct ocrdma_hdr_wqe *hdr,
    struct ib_send_wr *wr)
{
 struct ocrdma_ewqe_ud_hdr *ud_hdr =
  (struct ocrdma_ewqe_ud_hdr *)(hdr + 1);
 struct ocrdma_ah *ah = get_ocrdma_ah(wr->wr.ud.ah);

 ud_hdr->rsvd_dest_qpn = wr->wr.ud.remote_qpn;
 if (qp->qp_type == IB_QPT_GSI)
  ud_hdr->qkey = qp->qkey;
 else
  ud_hdr->qkey = wr->wr.ud.remote_qkey;
 ud_hdr->rsvd_ahid = ah->id;
}
