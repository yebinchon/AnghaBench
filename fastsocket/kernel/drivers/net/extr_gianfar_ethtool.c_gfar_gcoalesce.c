
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gfar_private {int device_flags; int txic; int rxic; int * phydev; } ;
struct ethtool_coalesce {unsigned long rx_max_coalesced_frames; unsigned long tx_max_coalesced_frames; scalar_t__ rate_sample_interval; scalar_t__ tx_max_coalesced_frames_high; scalar_t__ tx_coalesce_usecs_high; scalar_t__ rx_max_coalesced_frames_high; scalar_t__ rx_coalesce_usecs_high; scalar_t__ pkt_rate_high; scalar_t__ tx_max_coalesced_frames_low; scalar_t__ tx_coalesce_usecs_low; scalar_t__ rx_max_coalesced_frames_low; scalar_t__ rx_coalesce_usecs_low; scalar_t__ pkt_rate_low; scalar_t__ use_adaptive_tx_coalesce; scalar_t__ use_adaptive_rx_coalesce; void* tx_coalesce_usecs; void* rx_coalesce_usecs; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int FSL_GIANFAR_DEV_HAS_COALESCE ;
 unsigned long get_icft_value (int ) ;
 unsigned long get_ictt_value (int ) ;
 void* gfar_ticks2usecs (struct gfar_private*,unsigned long) ;
 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gfar_gcoalesce(struct net_device *dev, struct ethtool_coalesce *cvals)
{
 struct gfar_private *priv = netdev_priv(dev);
 unsigned long rxtime;
 unsigned long rxcount;
 unsigned long txtime;
 unsigned long txcount;

 if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_COALESCE))
  return -EOPNOTSUPP;

 if (((void*)0) == priv->phydev)
  return -ENODEV;

 rxtime = get_ictt_value(priv->rxic);
 rxcount = get_icft_value(priv->rxic);
 txtime = get_ictt_value(priv->txic);
 txcount = get_icft_value(priv->txic);
 cvals->rx_coalesce_usecs = gfar_ticks2usecs(priv, rxtime);
 cvals->rx_max_coalesced_frames = rxcount;

 cvals->tx_coalesce_usecs = gfar_ticks2usecs(priv, txtime);
 cvals->tx_max_coalesced_frames = txcount;

 cvals->use_adaptive_rx_coalesce = 0;
 cvals->use_adaptive_tx_coalesce = 0;

 cvals->pkt_rate_low = 0;
 cvals->rx_coalesce_usecs_low = 0;
 cvals->rx_max_coalesced_frames_low = 0;
 cvals->tx_coalesce_usecs_low = 0;
 cvals->tx_max_coalesced_frames_low = 0;
 cvals->pkt_rate_high = 0;
 cvals->rx_coalesce_usecs_high = 0;
 cvals->rx_max_coalesced_frames_high = 0;
 cvals->tx_coalesce_usecs_high = 0;
 cvals->tx_max_coalesced_frames_high = 0;




 cvals->rate_sample_interval = 0;

 return 0;
}
