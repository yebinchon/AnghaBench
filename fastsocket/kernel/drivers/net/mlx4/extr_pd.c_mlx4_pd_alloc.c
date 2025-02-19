
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_priv {int pd_bitmap; } ;
struct mlx4_dev {int dummy; } ;


 int ENOMEM ;
 int mlx4_bitmap_alloc (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int mlx4_pd_alloc(struct mlx4_dev *dev, u32 *pdn)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 *pdn = mlx4_bitmap_alloc(&priv->pd_bitmap);
 if (*pdn == -1)
  return -ENOMEM;

 return 0;
}
