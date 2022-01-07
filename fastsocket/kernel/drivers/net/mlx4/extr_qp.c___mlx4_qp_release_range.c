
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_qp_table {int bitmap; } ;
struct mlx4_priv {struct mlx4_qp_table qp_table; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_bitmap_free_range (int *,int,int) ;
 scalar_t__ mlx4_is_qp_reserved (struct mlx4_dev*,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

void __mlx4_qp_release_range(struct mlx4_dev *dev, int base_qpn, int cnt)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_qp_table *qp_table = &priv->qp_table;

 if (mlx4_is_qp_reserved(dev, (u32) base_qpn))
  return;
 mlx4_bitmap_free_range(&qp_table->bitmap, base_qpn, cnt);
}
