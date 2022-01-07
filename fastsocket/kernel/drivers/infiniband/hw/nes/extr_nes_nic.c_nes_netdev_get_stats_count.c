
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int NES_ETHTOOL_STAT_COUNT ;

__attribute__((used)) static int nes_netdev_get_stats_count(struct net_device *netdev)
{
 return NES_ETHTOOL_STAT_COUNT;
}
