
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct bdx_stats {int dummy; } ;
struct bdx_priv {scalar_t__ stats_flag; } ;


 int ARRAY_SIZE (int ) ;
 int BDX_ASSERT (int) ;
 int bdx_stat_names ;
 struct bdx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bdx_get_stats_count(struct net_device *netdev)
{
 struct bdx_priv *priv = netdev_priv(netdev);
 BDX_ASSERT(ARRAY_SIZE(bdx_stat_names)
     != sizeof(struct bdx_stats) / sizeof(u64));
 return ((priv->stats_flag) ? ARRAY_SIZE(bdx_stat_names) : 0);
}
