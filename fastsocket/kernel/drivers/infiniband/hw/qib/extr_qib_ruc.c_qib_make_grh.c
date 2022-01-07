
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qib_ibport {int * guids; int gid_prefix; } ;
struct TYPE_4__ {int interface_id; int subnet_prefix; } ;
struct TYPE_5__ {TYPE_1__ global; } ;
struct ib_grh {int dgid; TYPE_2__ sgid; int hop_limit; int next_hdr; int paylen; int version_tclass_flow; } ;
struct ib_global_route {int traffic_class; int flow_label; int sgid_index; int dgid; int hop_limit; } ;
struct TYPE_6__ {int guid; } ;


 int IB_GRH_FLOW_SHIFT ;
 int IB_GRH_NEXT_HDR ;
 int IB_GRH_TCLASS_SHIFT ;
 int IB_GRH_VERSION ;
 int IB_GRH_VERSION_SHIFT ;
 int SIZE_OF_CRC ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 TYPE_3__* ppd_from_ibp (struct qib_ibport*) ;

u32 qib_make_grh(struct qib_ibport *ibp, struct ib_grh *hdr,
   struct ib_global_route *grh, u32 hwords, u32 nwords)
{
 hdr->version_tclass_flow =
  cpu_to_be32((IB_GRH_VERSION << IB_GRH_VERSION_SHIFT) |
       (grh->traffic_class << IB_GRH_TCLASS_SHIFT) |
       (grh->flow_label << IB_GRH_FLOW_SHIFT));
 hdr->paylen = cpu_to_be16((hwords - 2 + nwords + SIZE_OF_CRC) << 2);

 hdr->next_hdr = IB_GRH_NEXT_HDR;
 hdr->hop_limit = grh->hop_limit;

 hdr->sgid.global.subnet_prefix = ibp->gid_prefix;
 hdr->sgid.global.interface_id = grh->sgid_index ?
  ibp->guids[grh->sgid_index - 1] : ppd_from_ibp(ibp)->guid;
 hdr->dgid = grh->dgid;


 return sizeof(struct ib_grh) / sizeof(u32);
}
