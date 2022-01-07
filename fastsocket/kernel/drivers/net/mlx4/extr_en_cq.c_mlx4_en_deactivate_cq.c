
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {TYPE_1__* mdev; } ;
struct mlx4_en_cq {int mcq; int napi; int is_tx; } ;
struct TYPE_2__ {int dev; } ;


 int mlx4_cq_free (int ,int *) ;
 int napi_disable (int *) ;
 int netif_napi_del (int *) ;

void mlx4_en_deactivate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq)
{
 if (!cq->is_tx) {
  napi_disable(&cq->napi);
  netif_napi_del(&cq->napi);
 }

 mlx4_cq_free(priv->mdev->dev, &cq->mcq);
}
