
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_priv {scalar_t__ clock_mapping; } ;
struct mlx4_dev {int dummy; } ;


 int iounmap (scalar_t__) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static void unmap_internal_clock(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 if (priv->clock_mapping)
  iounmap(priv->clock_mapping);
}
