
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int bitmap; } ;
struct mlx4_priv {TYPE_1__ mcg_table; } ;
struct TYPE_4__ {scalar_t__ steering_mode; scalar_t__ num_amgms; } ;
struct mlx4_dev {TYPE_2__ caps; } ;


 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ;
 int mlx4_bitmap_init (int *,scalar_t__,scalar_t__,int ,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mutex_init (int *) ;

int mlx4_init_mcg_table(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int err;


 if (dev->caps.steering_mode ==
     MLX4_STEERING_MODE_DEVICE_MANAGED)
  return 0;
 err = mlx4_bitmap_init(&priv->mcg_table.bitmap, dev->caps.num_amgms,
          dev->caps.num_amgms - 1, 0, 0);
 if (err)
  return err;

 mutex_init(&priv->mcg_table.mutex);

 return 0;
}
