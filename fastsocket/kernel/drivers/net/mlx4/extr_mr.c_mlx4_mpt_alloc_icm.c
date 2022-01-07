
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_ALLOC_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_MPT ;
 int RES_OP_MAP_ICM ;
 int __mlx4_mpt_alloc_icm (struct mlx4_dev*,int ) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int set_param_l (int *,int ) ;

__attribute__((used)) static int mlx4_mpt_alloc_icm(struct mlx4_dev *dev, u32 index)
{
 u64 param = 0;

 if (mlx4_is_mfunc(dev)) {
  set_param_l(&param, index);
  return mlx4_cmd_imm(dev, param, &param, RES_MPT, RES_OP_MAP_ICM,
       MLX4_CMD_ALLOC_RES,
       MLX4_CMD_TIME_CLASS_A,
       MLX4_CMD_WRAPPED);
 }
 return __mlx4_mpt_alloc_icm(dev, index);
}
