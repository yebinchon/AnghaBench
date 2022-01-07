
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_NOP ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int ,int ,int,int ) ;

int mlx4_NOP(struct mlx4_dev *dev)
{

 return mlx4_cmd(dev, 0, 0x1f, 0, MLX4_CMD_NOP, 100, MLX4_CMD_NATIVE);
}
