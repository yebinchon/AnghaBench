
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rxlen_pkey; } ;
struct ocrdma_cqe {TYPE_1__ ud; int flags_status_srcqpn; } ;
struct ib_wc {int src_qp; int pkey_index; int byte_len; int wc_flags; } ;


 int IB_WC_GRH ;
 int OCRDMA_CQE_PKEY_MASK ;
 int OCRDMA_CQE_SRCQP_MASK ;
 int OCRDMA_CQE_UD_STATUS_MASK ;
 int OCRDMA_CQE_UD_STATUS_SHIFT ;
 int OCRDMA_CQE_UD_XFER_LEN_SHIFT ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ocrdma_update_ud_rcqe(struct ib_wc *ibwc, struct ocrdma_cqe *cqe)
{
 int status;

 status = (le32_to_cpu(cqe->flags_status_srcqpn) &
  OCRDMA_CQE_UD_STATUS_MASK) >> OCRDMA_CQE_UD_STATUS_SHIFT;
 ibwc->src_qp = le32_to_cpu(cqe->flags_status_srcqpn) &
      OCRDMA_CQE_SRCQP_MASK;
 ibwc->pkey_index = le32_to_cpu(cqe->ud.rxlen_pkey) &
      OCRDMA_CQE_PKEY_MASK;
 ibwc->wc_flags = IB_WC_GRH;
 ibwc->byte_len = (le32_to_cpu(cqe->ud.rxlen_pkey) >>
     OCRDMA_CQE_UD_XFER_LEN_SHIFT);
 return status;
}
