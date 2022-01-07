
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_priv {int counters_bitmap; } ;
struct TYPE_2__ {int flags; int max_counters; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int ENOENT ;
 int MLX4_DEV_CAP_FLAG_COUNTERS ;
 int mlx4_bitmap_init (int *,int,int,int ,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static int mlx4_init_counters_table(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int nent;

 if (!(dev->caps.flags & MLX4_DEV_CAP_FLAG_COUNTERS))
  return -ENOENT;

 nent = dev->caps.max_counters;
 return mlx4_bitmap_init(&priv->counters_bitmap, nent, nent - 1, 0, 0);
}
