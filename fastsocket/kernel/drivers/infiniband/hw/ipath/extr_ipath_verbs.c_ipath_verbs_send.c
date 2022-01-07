
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ipath_sge_state {int dummy; } ;
struct TYPE_3__ {scalar_t__ qp_type; int device; } ;
struct ipath_qp {TYPE_1__ ibqp; } ;
struct ipath_ib_header {int dummy; } ;
struct ipath_devdata {int ipath_flags; } ;
struct TYPE_4__ {struct ipath_devdata* dd; } ;


 scalar_t__ IB_QPT_SMI ;
 int IPATH_HAS_SEND_DMA ;
 int ipath_verbs_send_dma (struct ipath_qp*,struct ipath_ib_header*,int,struct ipath_sge_state*,int,int,int) ;
 int ipath_verbs_send_pio (struct ipath_qp*,struct ipath_ib_header*,int,struct ipath_sge_state*,int,int,int) ;
 TYPE_2__* to_idev (int ) ;

int ipath_verbs_send(struct ipath_qp *qp, struct ipath_ib_header *hdr,
       u32 hdrwords, struct ipath_sge_state *ss, u32 len)
{
 struct ipath_devdata *dd = to_idev(qp->ibqp.device)->dd;
 u32 plen;
 int ret;
 u32 dwords = (len + 3) >> 2;





 plen = hdrwords + dwords + 1;






 if (qp->ibqp.qp_type == IB_QPT_SMI ||
     !(dd->ipath_flags & IPATH_HAS_SEND_DMA))
  ret = ipath_verbs_send_pio(qp, hdr, hdrwords, ss, len,
        plen, dwords);
 else
  ret = ipath_verbs_send_dma(qp, hdr, hdrwords, ss, len,
        plen, dwords);

 return ret;
}
