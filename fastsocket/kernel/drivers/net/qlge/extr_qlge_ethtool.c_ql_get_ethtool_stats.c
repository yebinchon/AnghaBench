
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ql_adapter {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int stat_offset; int sizeof_stat; } ;


 int QLGE_STATS_LEN ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 TYPE_1__* ql_gstrings_stats ;
 int ql_update_stats (struct ql_adapter*) ;

__attribute__((used)) static void
ql_get_ethtool_stats(struct net_device *ndev,
       struct ethtool_stats *stats, u64 *data)
{
 struct ql_adapter *qdev = netdev_priv(ndev);
 int index, length;

 length = QLGE_STATS_LEN;
 ql_update_stats(qdev);

 for (index = 0; index < length; index++) {
  char *p = (char *)qdev +
   ql_gstrings_stats[index].stat_offset;
  *data++ = (ql_gstrings_stats[index].sizeof_stat ==
   sizeof(u64)) ? *(u64 *)p : (*(u32 *)p);
 }
}
