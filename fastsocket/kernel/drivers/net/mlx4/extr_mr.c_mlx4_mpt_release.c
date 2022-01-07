
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_FREE_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_MPT ;
 int RES_OP_RESERVE ;
 int __mlx4_mpt_release (struct mlx4_dev*,int ) ;
 scalar_t__ mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int ) ;
 int set_param_l (int *,int ) ;

__attribute__((used)) static void mlx4_mpt_release(struct mlx4_dev *dev, u32 index)
{
 u64 in_param = 0;

 if (mlx4_is_mfunc(dev)) {
  set_param_l(&in_param, index);
  if (mlx4_cmd(dev, in_param, RES_MPT, RES_OP_RESERVE,
          MLX4_CMD_FREE_RES,
          MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED))
   mlx4_warn(dev, "Failed to release mr index:%d\n",
      index);
  return;
 }
 __mlx4_mpt_release(dev, index);
}
