
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_qp_table {int bitmap; } ;
struct mlx4_priv {struct mlx4_qp_table qp_table; } ;
struct mlx4_dev {int dummy; } ;


 int ENOMEM ;
 int mlx4_bitmap_alloc_range (int *,int,int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int __mlx4_qp_reserve_range(struct mlx4_dev *dev, int cnt, int align,
       int *base)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_qp_table *qp_table = &priv->qp_table;

 *base = mlx4_bitmap_alloc_range(&qp_table->bitmap, cnt, align);
 if (*base == -1)
  return -ENOMEM;

 return 0;
}
