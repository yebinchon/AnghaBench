
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {int tx_ring_num; int rx_ring_num; TYPE_1__* rx_cq; scalar_t__ port_up; int * last_moder_time; int rx_usecs; int rx_frames; scalar_t__ adaptive_rx_coal; TYPE_1__* tx_cq; int tx_usecs; int tx_frames; } ;
struct TYPE_2__ {int moder_time; int moder_cnt; } ;


 int MLX4_EN_AUTO_CONF ;
 int mlx4_en_set_cq_moder (struct mlx4_en_priv*,TYPE_1__*) ;

__attribute__((used)) static int mlx4_en_moderation_update(struct mlx4_en_priv *priv)
{
 int i;
 int err = 0;

 for (i = 0; i < priv->tx_ring_num; i++) {
  priv->tx_cq[i].moder_cnt = priv->tx_frames;
  priv->tx_cq[i].moder_time = priv->tx_usecs;
  if (priv->port_up) {
   err = mlx4_en_set_cq_moder(priv, &priv->tx_cq[i]);
   if (err)
    return err;
  }
 }

 if (priv->adaptive_rx_coal)
  return 0;

 for (i = 0; i < priv->rx_ring_num; i++) {
  priv->rx_cq[i].moder_cnt = priv->rx_frames;
  priv->rx_cq[i].moder_time = priv->rx_usecs;
  priv->last_moder_time[i] = MLX4_EN_AUTO_CONF;
  if (priv->port_up) {
   err = mlx4_en_set_cq_moder(priv, &priv->rx_cq[i]);
   if (err)
    return err;
  }
 }

 return err;
}
