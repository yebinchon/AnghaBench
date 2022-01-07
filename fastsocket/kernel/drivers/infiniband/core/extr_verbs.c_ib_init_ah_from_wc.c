
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ib_wc {int wc_flags; int dlid_path_bits; int sl; int slid; } ;
struct ib_grh {int version_tclass_flow; int dgid; int sgid; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int flow_label; int hop_limit; int traffic_class; void* sgid_index; int dgid; } ;
struct ib_ah_attr {TYPE_1__ grh; int ah_flags; void* port_num; int src_path_bits; int sl; int dlid; } ;


 int IB_AH_GRH ;
 int IB_WC_GRH ;
 int be32_to_cpu (int ) ;
 int ib_find_cached_gid (struct ib_device*,int *,void**,scalar_t__*) ;
 int memset (struct ib_ah_attr*,int ,int) ;

int ib_init_ah_from_wc(struct ib_device *device, u8 port_num, struct ib_wc *wc,
         struct ib_grh *grh, struct ib_ah_attr *ah_attr)
{
 u32 flow_class;
 u16 gid_index;
 int ret;

 memset(ah_attr, 0, sizeof *ah_attr);
 ah_attr->dlid = wc->slid;
 ah_attr->sl = wc->sl;
 ah_attr->src_path_bits = wc->dlid_path_bits;
 ah_attr->port_num = port_num;

 if (wc->wc_flags & IB_WC_GRH) {
  ah_attr->ah_flags = IB_AH_GRH;
  ah_attr->grh.dgid = grh->sgid;

  ret = ib_find_cached_gid(device, &grh->dgid, &port_num,
      &gid_index);
  if (ret)
   return ret;

  ah_attr->grh.sgid_index = (u8) gid_index;
  flow_class = be32_to_cpu(grh->version_tclass_flow);
  ah_attr->grh.flow_label = flow_class & 0xFFFFF;
  ah_attr->grh.hop_limit = 0xFF;
  ah_attr->grh.traffic_class = (flow_class >> 20) & 0xFF;
 }
 return 0;
}
