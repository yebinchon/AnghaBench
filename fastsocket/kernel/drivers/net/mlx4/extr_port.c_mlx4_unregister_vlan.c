
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_FREE_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_OP_RESERVE_AND_MAP ;
 int RES_VLAN ;
 int __mlx4_unregister_vlan (struct mlx4_dev*,int ,int) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int) ;
 int set_param_l (int *,int ) ;

void mlx4_unregister_vlan(struct mlx4_dev *dev, u8 port, int index)
{
 u64 in_param = 0;
 int err;

 if (mlx4_is_mfunc(dev)) {
  set_param_l(&in_param, port);
  err = mlx4_cmd(dev, in_param, RES_VLAN, RES_OP_RESERVE_AND_MAP,
          MLX4_CMD_FREE_RES, MLX4_CMD_TIME_CLASS_A,
          MLX4_CMD_WRAPPED);
  if (!err)
   mlx4_warn(dev, "Failed freeing vlan at index:%d\n",
     index);

  return;
 }
 __mlx4_unregister_vlan(dev, port, index);
}
