
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {int rx_ring_num; int tx_ring_num; int adaptive_rx_coal; scalar_t__ last_moder_tx_packets; scalar_t__ last_moder_jiffies; int sample_interval; int rx_usecs_high; int pkt_rate_high; int rx_usecs_low; int pkt_rate_low; int tx_usecs; int tx_frames; struct mlx4_en_cq* tx_cq; scalar_t__* last_moder_bytes; scalar_t__* last_moder_packets; int * last_moder_time; int rx_usecs; int rx_frames; struct mlx4_en_cq* rx_cq; TYPE_1__* dev; } ;
struct mlx4_en_cq {int moder_time; int moder_cnt; } ;
struct TYPE_2__ {int mtu; } ;


 int INTR ;
 int MLX4_EN_AUTO_CONF ;
 int MLX4_EN_RX_COAL_TARGET ;
 int MLX4_EN_RX_COAL_TIME ;
 int MLX4_EN_RX_COAL_TIME_HIGH ;
 int MLX4_EN_RX_COAL_TIME_LOW ;
 int MLX4_EN_RX_RATE_HIGH ;
 int MLX4_EN_RX_RATE_LOW ;
 int MLX4_EN_SAMPLE_INTERVAL ;
 int MLX4_EN_TX_COAL_PKTS ;
 int MLX4_EN_TX_COAL_TIME ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int ,int ,int ) ;

__attribute__((used)) static void mlx4_en_set_default_moderation(struct mlx4_en_priv *priv)
{
 struct mlx4_en_cq *cq;
 int i;







 priv->rx_frames = MLX4_EN_RX_COAL_TARGET;
 priv->rx_usecs = MLX4_EN_RX_COAL_TIME;
 priv->tx_frames = MLX4_EN_TX_COAL_PKTS;
 priv->tx_usecs = MLX4_EN_TX_COAL_TIME;
 en_dbg(INTR, priv, "Default coalesing params for mtu:%d - rx_frames:%d rx_usecs:%d\n",
        priv->dev->mtu, priv->rx_frames, priv->rx_usecs);


 for (i = 0; i < priv->rx_ring_num; i++) {
  cq = &priv->rx_cq[i];
  cq->moder_cnt = priv->rx_frames;
  cq->moder_time = priv->rx_usecs;
  priv->last_moder_time[i] = MLX4_EN_AUTO_CONF;
  priv->last_moder_packets[i] = 0;
  priv->last_moder_bytes[i] = 0;
 }

 for (i = 0; i < priv->tx_ring_num; i++) {
  cq = &priv->tx_cq[i];
  cq->moder_cnt = priv->tx_frames;
  cq->moder_time = priv->tx_usecs;
 }


 priv->pkt_rate_low = MLX4_EN_RX_RATE_LOW;
 priv->rx_usecs_low = MLX4_EN_RX_COAL_TIME_LOW;
 priv->pkt_rate_high = MLX4_EN_RX_RATE_HIGH;
 priv->rx_usecs_high = MLX4_EN_RX_COAL_TIME_HIGH;
 priv->sample_interval = MLX4_EN_SAMPLE_INTERVAL;
 priv->adaptive_rx_coal = 1;
 priv->last_moder_jiffies = 0;
 priv->last_moder_tx_packets = 0;
}
