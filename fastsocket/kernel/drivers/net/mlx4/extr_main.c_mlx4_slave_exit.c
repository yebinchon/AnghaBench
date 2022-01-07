
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slave_cmd_mutex; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_COMM_CMD_RESET ;
 int MLX4_COMM_TIME ;
 scalar_t__ mlx4_comm_cmd (struct mlx4_dev*,int ,int ,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlx4_slave_exit(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 mutex_lock(&priv->cmd.slave_cmd_mutex);
 if (mlx4_comm_cmd(dev, MLX4_COMM_CMD_RESET, 0, MLX4_COMM_TIME))
  mlx4_warn(dev, "Failed to close slave function.\n");
 mutex_unlock(&priv->cmd.slave_cmd_mutex);
}
