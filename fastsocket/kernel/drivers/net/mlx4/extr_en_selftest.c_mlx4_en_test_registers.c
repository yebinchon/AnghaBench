
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {TYPE_1__* mdev; } ;
struct TYPE_2__ {int dev; } ;


 int MLX4_CMD_HW_HEALTH_CHECK ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int mlx4_cmd (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mlx4_en_test_registers(struct mlx4_en_priv *priv)
{
 return mlx4_cmd(priv->mdev->dev, 0, 0, 0, MLX4_CMD_HW_HEALTH_CHECK,
   MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
}
