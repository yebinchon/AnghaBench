
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_priv {int xrcd_bitmap; } ;
struct TYPE_2__ {scalar_t__ reserved_xrcds; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int mlx4_bitmap_init (int *,int,int,scalar_t__,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int mlx4_init_xrcd_table(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 return mlx4_bitmap_init(&priv->xrcd_bitmap, (1 << 16),
    (1 << 16) - 1, dev->caps.reserved_xrcds + 1, 0);
}
