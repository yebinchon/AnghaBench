
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct e1000_adapter {int dummy; } ;
struct TYPE_2__ {int type; int sizeof_stat; int stat_offset; } ;


 int E1000_GLOBAL_STATS_LEN ;


 TYPE_1__* e1000_gstrings_stats ;
 int e1000_update_stats (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e1000_get_ethtool_stats(struct net_device *netdev,
        struct ethtool_stats *stats, u64 *data)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 int i;
 char *p = ((void*)0);

 e1000_update_stats(adapter);
 for (i = 0; i < E1000_GLOBAL_STATS_LEN; i++) {
  switch (e1000_gstrings_stats[i].type) {
  case 128:
   p = (char *) netdev +
     e1000_gstrings_stats[i].stat_offset;
   break;
  case 129:
   p = (char *) adapter +
     e1000_gstrings_stats[i].stat_offset;
   break;
  }

  data[i] = (e1000_gstrings_stats[i].sizeof_stat ==
   sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
 }

}
