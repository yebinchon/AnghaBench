
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_UC_STEER ;
 int mlx4_PROMISC (struct mlx4_dev*,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int remove_promisc_qp (struct mlx4_dev*,int ,int ,int ) ;

int mlx4_unicast_promisc_remove(struct mlx4_dev *dev, u32 qpn, u8 port)
{
 if (mlx4_is_mfunc(dev))
  return mlx4_PROMISC(dev, qpn, MLX4_UC_STEER, 0, port);

 return remove_promisc_qp(dev, port, MLX4_UC_STEER, qpn);
}
