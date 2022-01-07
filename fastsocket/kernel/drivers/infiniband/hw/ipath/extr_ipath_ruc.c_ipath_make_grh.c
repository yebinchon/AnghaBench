
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ipath_ibdev {TYPE_3__* dd; int gid_prefix; } ;
struct TYPE_4__ {int interface_id; int subnet_prefix; } ;
struct TYPE_5__ {TYPE_1__ global; } ;
struct ib_grh {int next_hdr; int dgid; TYPE_2__ sgid; int hop_limit; int paylen; int version_tclass_flow; } ;
struct ib_global_route {int traffic_class; int flow_label; int dgid; int hop_limit; } ;
struct TYPE_6__ {int ipath_guid; } ;


 int SIZE_OF_CRC ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;

u32 ipath_make_grh(struct ipath_ibdev *dev, struct ib_grh *hdr,
     struct ib_global_route *grh, u32 hwords, u32 nwords)
{
 hdr->version_tclass_flow =
  cpu_to_be32((6 << 28) |
       (grh->traffic_class << 20) |
       grh->flow_label);
 hdr->paylen = cpu_to_be16((hwords - 2 + nwords + SIZE_OF_CRC) << 2);

 hdr->next_hdr = 0x1B;
 hdr->hop_limit = grh->hop_limit;

 hdr->sgid.global.subnet_prefix = dev->gid_prefix;
 hdr->sgid.global.interface_id = dev->dd->ipath_guid;
 hdr->dgid = grh->dgid;


 return sizeof(struct ib_grh) / sizeof(u32);
}
