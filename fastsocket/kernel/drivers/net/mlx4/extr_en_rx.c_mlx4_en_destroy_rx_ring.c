
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int buf; } ;
struct mlx4_en_rx_ring {int * rx_info; TYPE_1__ wqres; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;


 scalar_t__ TXBB_SIZE ;
 int mlx4_en_cleanup_filters (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ;
 int mlx4_en_unmap_buffer (int *) ;
 int mlx4_free_hwq_res (int ,TYPE_1__*,scalar_t__) ;
 int vfree (int *) ;

void mlx4_en_destroy_rx_ring(struct mlx4_en_priv *priv,
        struct mlx4_en_rx_ring *ring, u32 size, u16 stride)
{
 struct mlx4_en_dev *mdev = priv->mdev;

 mlx4_en_unmap_buffer(&ring->wqres.buf);
 mlx4_free_hwq_res(mdev->dev, &ring->wqres, size * stride + TXBB_SIZE);
 vfree(ring->rx_info);
 ring->rx_info = ((void*)0);



}
