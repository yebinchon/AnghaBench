
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int qeth_ethtool_stats_keys ;


 int ETH_GSTRING_LEN ;

int qeth_core_get_stats_count(struct net_device *dev)
{
 return (sizeof(qeth_ethtool_stats_keys) / ETH_GSTRING_LEN);
}
