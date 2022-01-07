
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct mlx4_en_tx_ring {int * tx_info; int * bounce_buf; int buf_size; TYPE_1__ wqres; int qp; int bf; scalar_t__ bf_enabled; int qpn; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;


 int DRV ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int ) ;
 int kfree (int *) ;
 int mlx4_bf_free (int ,int *) ;
 int mlx4_en_unmap_buffer (int *) ;
 int mlx4_free_hwq_res (int ,TYPE_1__*,int ) ;
 int mlx4_qp_free (int ,int *) ;
 int mlx4_qp_remove (int ,int *) ;
 int vfree (int *) ;

void mlx4_en_destroy_tx_ring(struct mlx4_en_priv *priv,
        struct mlx4_en_tx_ring *ring)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 en_dbg(DRV, priv, "Destroying tx ring, qpn: %d\n", ring->qpn);

 if (ring->bf_enabled)
  mlx4_bf_free(mdev->dev, &ring->bf);
 mlx4_qp_remove(mdev->dev, &ring->qp);
 mlx4_qp_free(mdev->dev, &ring->qp);
 mlx4_en_unmap_buffer(&ring->wqres.buf);
 mlx4_free_hwq_res(mdev->dev, &ring->wqres, ring->buf_size);
 kfree(ring->bounce_buf);
 ring->bounce_buf = ((void*)0);
 vfree(ring->tx_info);
 ring->tx_info = ((void*)0);
}
