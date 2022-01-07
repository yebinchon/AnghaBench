
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_CLOSE_PORT ;
 int MLX4_CMD_WRAPPED ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int ,int ,int,int ) ;

int mlx4_CLOSE_PORT(struct mlx4_dev *dev, int port)
{
 return mlx4_cmd(dev, 0, port, 0, MLX4_CMD_CLOSE_PORT, 1000,
   MLX4_CMD_WRAPPED);
}
