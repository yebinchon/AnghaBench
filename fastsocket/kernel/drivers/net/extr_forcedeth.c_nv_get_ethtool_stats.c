
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct fe_priv {int estats; } ;
struct ethtool_stats {int dummy; } ;


 int ETH_SS_STATS ;
 int memcpy (int *,int *,int) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int nv_do_stats_poll (unsigned long) ;
 int nv_get_sset_count (struct net_device*,int ) ;

__attribute__((used)) static void nv_get_ethtool_stats(struct net_device *dev, struct ethtool_stats *estats, u64 *buffer)
{
 struct fe_priv *np = netdev_priv(dev);


 nv_do_stats_poll((unsigned long)dev);

 memcpy(buffer, &np->estats, nv_get_sset_count(dev, ETH_SS_STATS)*sizeof(u64));
}
