
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct TYPE_7__ {int buf; } ;
struct mlx4_en_cq {int * buf; int buf_size; scalar_t__ vector; TYPE_4__ wqres; } ;
struct TYPE_5__ {scalar_t__ comp_pool; } ;
struct TYPE_6__ {TYPE_1__ caps; } ;


 int mlx4_en_unmap_buffer (int *) ;
 int mlx4_free_hwq_res (TYPE_2__*,TYPE_4__*,int ) ;
 int mlx4_release_eq (TYPE_2__*,scalar_t__) ;

void mlx4_en_destroy_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq)
{
 struct mlx4_en_dev *mdev = priv->mdev;

 mlx4_en_unmap_buffer(&cq->wqres.buf);
 mlx4_free_hwq_res(mdev->dev, &cq->wqres, cq->buf_size);
 if (priv->mdev->dev->caps.comp_pool && cq->vector)
  mlx4_release_eq(priv->mdev->dev, cq->vector);
 cq->vector = 0;
 cq->buf_size = 0;
 cq->buf = ((void*)0);
}
