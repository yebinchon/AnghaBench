
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mpt_bitmap; } ;
struct mlx4_priv {TYPE_1__ mr_table; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_bitmap_free (int *,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

void __mlx4_mpt_release(struct mlx4_dev *dev, u32 index)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 mlx4_bitmap_free(&priv->mr_table.mpt_bitmap, index);
}
