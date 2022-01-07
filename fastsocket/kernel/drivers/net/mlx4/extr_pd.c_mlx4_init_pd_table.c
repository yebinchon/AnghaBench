
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_priv {int pd_bitmap; } ;
struct TYPE_2__ {int reserved_pds; int num_pds; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int NOT_MASKED_PD_BITS ;
 int mlx4_bitmap_init (int *,int ,int,int ,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int mlx4_init_pd_table(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 return mlx4_bitmap_init(&priv->pd_bitmap, dev->caps.num_pds,
    (1 << NOT_MASKED_PD_BITS) - 1,
     dev->caps.reserved_pds, 0);
}
