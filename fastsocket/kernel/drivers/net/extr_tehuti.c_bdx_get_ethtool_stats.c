
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct bdx_priv {int hw_stats; scalar_t__ stats_flag; } ;


 int bdx_update_stats (struct bdx_priv*) ;
 int memcpy (int *,int *,int) ;
 struct bdx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bdx_get_ethtool_stats(struct net_device *netdev,
      struct ethtool_stats *stats, u64 *data)
{
 struct bdx_priv *priv = netdev_priv(netdev);

 if (priv->stats_flag) {


  bdx_update_stats(priv);


  memcpy(data, &priv->hw_stats, sizeof(priv->hw_stats));
 }
}
