
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct stmmac_priv {int xstats; TYPE_2__* mac_type; } ;
struct net_device {unsigned long base_addr; int stats; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_6__ {int stat_offset; int sizeof_stat; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* dma_diagnostic_fr ) (int *,int *,unsigned long) ;} ;


 int STMMAC_STATS_LEN ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 TYPE_3__* stmmac_gstrings_stats ;
 int stub1 (int *,int *,unsigned long) ;

__attribute__((used)) static void stmmac_get_ethtool_stats(struct net_device *dev,
     struct ethtool_stats *dummy, u64 *data)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 unsigned long ioaddr = dev->base_addr;
 int i;


 priv->mac_type->ops->dma_diagnostic_fr(&dev->stats, &priv->xstats,
            ioaddr);

 for (i = 0; i < STMMAC_STATS_LEN; i++) {
  char *p = (char *)priv + stmmac_gstrings_stats[i].stat_offset;
  data[i] = (stmmac_gstrings_stats[i].sizeof_stat ==
  sizeof(u64)) ? (*(u64 *)p) : (*(u32 *)p);
 }

 return;
}
