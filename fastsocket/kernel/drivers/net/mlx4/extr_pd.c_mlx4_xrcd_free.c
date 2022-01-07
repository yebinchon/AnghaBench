
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
 int RES_OP_RESERVE ;
 int RES_XRCD ;
 int __mlx4_xrcd_free (struct mlx4_dev*,int ) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int ) ;
 int set_param_l (int *,int ) ;

void mlx4_xrcd_free(struct mlx4_dev *dev, u32 xrcdn)
{
 u64 in_param = 0;
 int err;

 if (mlx4_is_mfunc(dev)) {
  set_param_l(&in_param, xrcdn);
  err = mlx4_cmd(dev, in_param, RES_XRCD,
          RES_OP_RESERVE, MLX4_CMD_FREE_RES,
          MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
  if (err)
   mlx4_warn(dev, "Failed to release xrcdn %d\n", xrcdn);
 } else
  __mlx4_xrcd_free(dev, xrcdn);
}
