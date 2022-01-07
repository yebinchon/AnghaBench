
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct ib_device {int dummy; } ;


 scalar_t__ IB_LINK_LAYER_INFINIBAND ;
 int __mlx4_ib_query_gid (struct ib_device*,int ,int,union ib_gid*,int ) ;
 int iboe_query_gid (struct ib_device*,int ,int,union ib_gid*) ;
 scalar_t__ rdma_port_get_link_layer (struct ib_device*,int ) ;

__attribute__((used)) static int mlx4_ib_query_gid(struct ib_device *ibdev, u8 port, int index,
        union ib_gid *gid)
{
 if (rdma_port_get_link_layer(ibdev, port) == IB_LINK_LAYER_INFINIBAND)
  return __mlx4_ib_query_gid(ibdev, port, index, gid, 0);
 else
  return iboe_query_gid(ibdev, port, index, gid);
}
