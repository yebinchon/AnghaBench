
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* reserved_qps_base; int log_num_macs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 size_t MLX4_QP_REGION_ETH_ADDR ;

int mlx4_get_base_qpn(struct mlx4_dev *dev, u8 port)
{
 return dev->caps.reserved_qps_base[MLX4_QP_REGION_ETH_ADDR] +
   (port - 1) * (1 << dev->caps.log_num_macs);
}
