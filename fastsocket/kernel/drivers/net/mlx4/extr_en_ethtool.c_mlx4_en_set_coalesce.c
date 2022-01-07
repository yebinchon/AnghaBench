
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ rx_frames; scalar_t__ rx_usecs; scalar_t__ tx_usecs; scalar_t__ tx_frames; int adaptive_rx_coal; int sample_interval; int rx_usecs_high; int pkt_rate_high; int rx_usecs_low; int pkt_rate_low; } ;
struct ethtool_coalesce {scalar_t__ rx_max_coalesced_frames; scalar_t__ rx_coalesce_usecs; scalar_t__ tx_coalesce_usecs; scalar_t__ tx_max_coalesced_frames; int use_adaptive_rx_coalesce; int rate_sample_interval; int rx_coalesce_usecs_high; int pkt_rate_high; int rx_coalesce_usecs_low; int pkt_rate_low; } ;


 scalar_t__ MLX4_EN_AUTO_CONF ;
 scalar_t__ MLX4_EN_RX_COAL_TARGET ;
 scalar_t__ MLX4_EN_RX_COAL_TIME ;
 int mlx4_en_moderation_update (struct mlx4_en_priv*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_coalesce(struct net_device *dev,
         struct ethtool_coalesce *coal)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 priv->rx_frames = (coal->rx_max_coalesced_frames ==
      MLX4_EN_AUTO_CONF) ?
    MLX4_EN_RX_COAL_TARGET :
    coal->rx_max_coalesced_frames;
 priv->rx_usecs = (coal->rx_coalesce_usecs ==
     MLX4_EN_AUTO_CONF) ?
    MLX4_EN_RX_COAL_TIME :
    coal->rx_coalesce_usecs;


 if (coal->tx_coalesce_usecs != priv->tx_usecs ||
     coal->tx_max_coalesced_frames != priv->tx_frames) {
  priv->tx_usecs = coal->tx_coalesce_usecs;
  priv->tx_frames = coal->tx_max_coalesced_frames;
 }


 priv->pkt_rate_low = coal->pkt_rate_low;
 priv->rx_usecs_low = coal->rx_coalesce_usecs_low;
 priv->pkt_rate_high = coal->pkt_rate_high;
 priv->rx_usecs_high = coal->rx_coalesce_usecs_high;
 priv->sample_interval = coal->rate_sample_interval;
 priv->adaptive_rx_coal = coal->use_adaptive_rx_coalesce;

 return mlx4_en_moderation_update(priv);
}
