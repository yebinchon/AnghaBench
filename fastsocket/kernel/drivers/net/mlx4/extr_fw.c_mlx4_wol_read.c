
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_MOD_STAT_CFG ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_WOL_SETUP_MODE ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int,int,int ,int ,int ) ;

int mlx4_wol_read(struct mlx4_dev *dev, u64 *config, int port)
{
 u32 in_mod = MLX4_WOL_SETUP_MODE | port << 8;

 return mlx4_cmd_imm(dev, 0, config, in_mod, 0x3,
       MLX4_CMD_MOD_STAT_CFG, MLX4_CMD_TIME_CLASS_A,
       MLX4_CMD_NATIVE);
}
