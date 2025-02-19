
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long uint64_t ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int stats_bitmap; int tx_ring_num; int rx_ring_num; int stats_lock; TYPE_2__* rx_ring; TYPE_1__* tx_ring; int port_stats; int stats; int pkstats; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_4__ {unsigned long packets; unsigned long bytes; } ;
struct TYPE_3__ {unsigned long packets; unsigned long bytes; } ;


 int NUM_MAIN_STATS ;
 int NUM_PKT_STATS ;
 int NUM_PORT_STATS ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mlx4_en_get_ethtool_stats(struct net_device *dev,
  struct ethtool_stats *stats, uint64_t *data)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int index = 0;
 int i, j = 0;

 spin_lock_bh(&priv->stats_lock);

 if (!(priv->stats_bitmap)) {
  for (i = 0; i < NUM_MAIN_STATS; i++)
   data[index++] =
    ((unsigned long *) &priv->stats)[i];
  for (i = 0; i < NUM_PORT_STATS; i++)
   data[index++] =
    ((unsigned long *) &priv->port_stats)[i];
  for (i = 0; i < NUM_PKT_STATS; i++)
   data[index++] =
    ((unsigned long *) &priv->pkstats)[i];
 } else {
  for (i = 0; i < NUM_MAIN_STATS; i++) {
   if ((priv->stats_bitmap >> j) & 1)
    data[index++] =
    ((unsigned long *) &priv->stats)[i];
   j++;
  }
  for (i = 0; i < NUM_PORT_STATS; i++) {
   if ((priv->stats_bitmap >> j) & 1)
    data[index++] =
    ((unsigned long *) &priv->port_stats)[i];
   j++;
  }
 }
 for (i = 0; i < priv->tx_ring_num; i++) {
  data[index++] = priv->tx_ring[i].packets;
  data[index++] = priv->tx_ring[i].bytes;
 }
 for (i = 0; i < priv->rx_ring_num; i++) {
  data[index++] = priv->rx_ring[i].packets;
  data[index++] = priv->rx_ring[i].bytes;
 }
 spin_unlock_bh(&priv->stats_lock);

}
