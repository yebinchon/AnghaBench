
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_sge_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ qp_type; int device; } ;
struct qib_qp {TYPE_1__ ibqp; } ;
struct qib_ib_header {int dummy; } ;
struct qib_devdata {int flags; } ;


 scalar_t__ IB_QPT_SMI ;
 int QIB_HAS_SEND_DMA ;
 struct qib_devdata* dd_from_ibdev (int ) ;
 int qib_verbs_send_dma (struct qib_qp*,struct qib_ib_header*,int,struct qib_sge_state*,int,int,int) ;
 int qib_verbs_send_pio (struct qib_qp*,struct qib_ib_header*,int,struct qib_sge_state*,int,int,int) ;

int qib_verbs_send(struct qib_qp *qp, struct qib_ib_header *hdr,
     u32 hdrwords, struct qib_sge_state *ss, u32 len)
{
 struct qib_devdata *dd = dd_from_ibdev(qp->ibqp.device);
 u32 plen;
 int ret;
 u32 dwords = (len + 3) >> 2;





 plen = hdrwords + dwords + 1;






 if (qp->ibqp.qp_type == IB_QPT_SMI ||
     !(dd->flags & QIB_HAS_SEND_DMA))
  ret = qib_verbs_send_pio(qp, hdr, hdrwords, ss, len,
      plen, dwords);
 else
  ret = qib_verbs_send_dma(qp, hdr, hdrwords, ss, len,
      plen, dwords);

 return ret;
}
