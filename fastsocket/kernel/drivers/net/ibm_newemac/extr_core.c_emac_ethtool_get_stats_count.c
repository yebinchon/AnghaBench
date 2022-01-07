
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EMAC_ETHTOOL_STATS_COUNT ;

__attribute__((used)) static int emac_ethtool_get_stats_count(struct net_device *ndev)
{
 return EMAC_ETHTOOL_STATS_COUNT;
}
