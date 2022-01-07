
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stat_string; } ;


 int ETH_GSTRING_LEN ;


 int IXGBE_GLOBAL_STATS_LEN ;
 int IXGBE_TEST_LEN ;
 TYPE_1__* ixgbe_gstrings_stats ;
 int * ixgbe_gstrings_test ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static void ixgbevf_get_strings(struct net_device *netdev, u32 stringset,
    u8 *data)
{
 char *p = (char *)data;
 int i;

 switch (stringset) {
 case 128:
  memcpy(data, *ixgbe_gstrings_test,
         IXGBE_TEST_LEN * ETH_GSTRING_LEN);
  break;
 case 129:
  for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++) {
   memcpy(p, ixgbe_gstrings_stats[i].stat_string,
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  break;
 }
}
