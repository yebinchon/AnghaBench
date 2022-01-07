
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
typedef int u16 ;
struct mlx4_ib_dev {struct mlx4_dev* dev; } ;
struct ib_ah {int dummy; } ;
struct TYPE_12__ {int stat_rate; void* sl_tclass_flowlabel; int dgid; void* vlan; int gid_index; void* port_pd; int mac; } ;
struct TYPE_9__ {void* dlid; } ;
struct TYPE_13__ {TYPE_5__ eth; TYPE_2__ ib; } ;
struct mlx4_ib_ah {struct ib_ah ibah; TYPE_6__ av; } ;
struct TYPE_8__ {int stat_rate_support; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct ib_pd {int device; } ;
struct TYPE_10__ {int * raw; } ;
struct TYPE_11__ {TYPE_3__ dgid; int sgid_index; } ;
struct ib_ah_attr {int port_num; int sl; int static_rate; TYPE_4__ grh; } ;
struct TYPE_14__ {int pdn; } ;


 struct ib_ah* ERR_PTR (int) ;
 int IB_RATE_2_5_GBPS ;
 int MLX4_STAT_RATE_OFFSET ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int ib_get_cached_gid (int ,int,int ,union ib_gid*) ;
 int memcpy (int ,int *,int) ;
 int mlx4_ib_resolve_grh (struct mlx4_ib_dev*,struct ib_ah_attr*,int *,int*,int) ;
 int rdma_get_vlan_id (union ib_gid*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 TYPE_7__* to_mpd (struct ib_pd*) ;

__attribute__((used)) static struct ib_ah *create_iboe_ah(struct ib_pd *pd, struct ib_ah_attr *ah_attr,
        struct mlx4_ib_ah *ah)
{
 struct mlx4_ib_dev *ibdev = to_mdev(pd->device);
 struct mlx4_dev *dev = ibdev->dev;
 union ib_gid sgid;
 u8 mac[6];
 int err;
 int is_mcast;
 u16 vlan_tag;

 err = mlx4_ib_resolve_grh(ibdev, ah_attr, mac, &is_mcast, ah_attr->port_num);
 if (err)
  return ERR_PTR(err);

 memcpy(ah->av.eth.mac, mac, 6);
 err = ib_get_cached_gid(pd->device, ah_attr->port_num, ah_attr->grh.sgid_index, &sgid);
 if (err)
  return ERR_PTR(err);
 vlan_tag = rdma_get_vlan_id(&sgid);
 if (vlan_tag < 0x1000)
  vlan_tag |= (ah_attr->sl & 7) << 13;
 ah->av.eth.port_pd = cpu_to_be32(to_mpd(pd)->pdn | (ah_attr->port_num << 24));
 ah->av.eth.gid_index = ah_attr->grh.sgid_index;
 ah->av.eth.vlan = cpu_to_be16(vlan_tag);
 if (ah_attr->static_rate) {
  ah->av.eth.stat_rate = ah_attr->static_rate + MLX4_STAT_RATE_OFFSET;
  while (ah->av.eth.stat_rate > IB_RATE_2_5_GBPS + MLX4_STAT_RATE_OFFSET &&
         !(1 << ah->av.eth.stat_rate & dev->caps.stat_rate_support))
   --ah->av.eth.stat_rate;
 }




 if (is_mcast)
  ah->av.ib.dlid = cpu_to_be16(0xc000);

 memcpy(ah->av.eth.dgid, ah_attr->grh.dgid.raw, 16);
 ah->av.eth.sl_tclass_flowlabel = cpu_to_be32(ah_attr->sl << 29);

 return &ah->ibah;
}
