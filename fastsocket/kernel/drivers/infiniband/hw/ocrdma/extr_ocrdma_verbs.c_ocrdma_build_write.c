
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ocrdma_sge {int len; int lrkey; int addr_hi; int addr_lo; } ;
struct ocrdma_qp {int dummy; } ;
struct ocrdma_hdr_wqe {int total_len; } ;
struct TYPE_3__ {int rkey; int remote_addr; } ;
struct TYPE_4__ {TYPE_1__ rdma; } ;
struct ib_send_wr {TYPE_2__ wr; } ;


 int ocrdma_build_inline_sges (struct ocrdma_qp*,struct ocrdma_hdr_wqe*,struct ocrdma_sge*,struct ib_send_wr*,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int ocrdma_build_write(struct ocrdma_qp *qp, struct ocrdma_hdr_wqe *hdr,
         struct ib_send_wr *wr)
{
 int status;
 struct ocrdma_sge *ext_rw = (struct ocrdma_sge *)(hdr + 1);
 struct ocrdma_sge *sge = ext_rw + 1;
 u32 wqe_size = sizeof(*hdr) + sizeof(*ext_rw);

 status = ocrdma_build_inline_sges(qp, hdr, sge, wr, wqe_size);
 if (status)
  return status;
 ext_rw->addr_lo = wr->wr.rdma.remote_addr;
 ext_rw->addr_hi = upper_32_bits(wr->wr.rdma.remote_addr);
 ext_rw->lrkey = wr->wr.rdma.rkey;
 ext_rw->len = hdr->total_len;
 return 0;
}
