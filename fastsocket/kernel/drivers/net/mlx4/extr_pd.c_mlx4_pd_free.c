
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {int pd_bitmap; } ;


 int mlx4_bitmap_free (int *,int ) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;

void mlx4_pd_free(struct mlx4_dev *dev, u32 pdn)
{
 mlx4_bitmap_free(&mlx4_priv(dev)->pd_bitmap, pdn);
}
