
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_UNMAP_FA ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;

int mlx4_UNMAP_FA(struct mlx4_dev *dev)
{
 return mlx4_cmd(dev, 0, 0, 0, MLX4_CMD_UNMAP_FA,
   MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);
}
