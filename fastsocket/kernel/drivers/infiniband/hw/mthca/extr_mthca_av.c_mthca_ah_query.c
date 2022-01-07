
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gid_table_len; } ;
struct mthca_dev {TYPE_1__ limits; } ;
struct mthca_ah {scalar_t__ type; TYPE_4__* av; } ;
struct TYPE_6__ {int raw; } ;
struct TYPE_7__ {int traffic_class; int flow_label; int sgid_index; TYPE_2__ dgid; int hop_limit; } ;
struct ib_ah_attr {int sl; int port_num; int src_path_bits; int ah_flags; TYPE_3__ grh; int static_rate; int dlid; } ;
struct ib_ah {int device; } ;
struct TYPE_8__ {int msg_sr; int g_slid; int gid_index; int dgid; int hop_limit; int sl_tclass_flowlabel; int port_pd; int dlid; } ;


 int ENOSYS ;
 int IB_AH_GRH ;
 scalar_t__ MTHCA_AH_ON_HCA ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ib_ah_attr*,int ,int) ;
 scalar_t__ mthca_ah_grh_present (struct mthca_ah*) ;
 int mthca_rate_to_ib (struct mthca_dev*,int,int) ;
 struct mthca_ah* to_mah (struct ib_ah*) ;
 struct mthca_dev* to_mdev (int ) ;

int mthca_ah_query(struct ib_ah *ibah, struct ib_ah_attr *attr)
{
 struct mthca_ah *ah = to_mah(ibah);
 struct mthca_dev *dev = to_mdev(ibah->device);


 if (ah->type == MTHCA_AH_ON_HCA)
  return -ENOSYS;

 memset(attr, 0, sizeof *attr);
 attr->dlid = be16_to_cpu(ah->av->dlid);
 attr->sl = be32_to_cpu(ah->av->sl_tclass_flowlabel) >> 28;
 attr->port_num = be32_to_cpu(ah->av->port_pd) >> 24;
 attr->static_rate = mthca_rate_to_ib(dev, ah->av->msg_sr & 0x7,
            attr->port_num);
 attr->src_path_bits = ah->av->g_slid & 0x7F;
 attr->ah_flags = mthca_ah_grh_present(ah) ? IB_AH_GRH : 0;

 if (attr->ah_flags) {
  attr->grh.traffic_class =
   be32_to_cpu(ah->av->sl_tclass_flowlabel) >> 20;
  attr->grh.flow_label =
   be32_to_cpu(ah->av->sl_tclass_flowlabel) & 0xfffff;
  attr->grh.hop_limit = ah->av->hop_limit;
  attr->grh.sgid_index = ah->av->gid_index &
           (dev->limits.gid_table_len - 1);
  memcpy(attr->grh.dgid.raw, ah->av->dgid, 16);
 }

 return 0;
}
