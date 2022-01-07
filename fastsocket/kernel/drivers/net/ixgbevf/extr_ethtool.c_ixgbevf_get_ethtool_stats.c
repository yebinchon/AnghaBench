
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int stat_offset; int base_stat_offset; int saved_reset_offset; int sizeof_stat; } ;


 int IXGBE_GLOBAL_STATS_LEN ;
 TYPE_1__* ixgbe_gstrings_stats ;
 int ixgbevf_update_stats (struct ixgbevf_adapter*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbevf_get_ethtool_stats(struct net_device *netdev,
          struct ethtool_stats *stats, u64 *data)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 int i;

 ixgbevf_update_stats(adapter);
 for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++) {
  char *p = (char *)adapter +
   ixgbe_gstrings_stats[i].stat_offset;
  char *b = (char *)adapter +
   ixgbe_gstrings_stats[i].base_stat_offset;
  char *r = (char *)adapter +
   ixgbe_gstrings_stats[i].saved_reset_offset;
  data[i] = ((ixgbe_gstrings_stats[i].sizeof_stat ==
       sizeof(u64)) ? *(u64 *)p : *(u32 *)p) -
     ((ixgbe_gstrings_stats[i].sizeof_stat ==
       sizeof(u64)) ? *(u64 *)b : *(u32 *)b) +
     ((ixgbe_gstrings_stats[i].sizeof_stat ==
       sizeof(u64)) ? *(u64 *)r : *(u32 *)r);
 }
}
