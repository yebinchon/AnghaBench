
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {scalar_t__* port_mask; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct ib_device {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;
struct TYPE_4__ {struct mlx4_dev* dev; } ;


 int IB_LINK_LAYER_ETHERNET ;
 int IB_LINK_LAYER_INFINIBAND ;
 scalar_t__ MLX4_PORT_TYPE_IB ;
 TYPE_2__* to_mdev (struct ib_device*) ;

__attribute__((used)) static enum rdma_link_layer
mlx4_ib_port_link_layer(struct ib_device *device, u8 port_num)
{
 struct mlx4_dev *dev = to_mdev(device)->dev;

 return dev->caps.port_mask[port_num] == MLX4_PORT_TYPE_IB ?
  IB_LINK_LAYER_INFINIBAND : IB_LINK_LAYER_ETHERNET;
}
