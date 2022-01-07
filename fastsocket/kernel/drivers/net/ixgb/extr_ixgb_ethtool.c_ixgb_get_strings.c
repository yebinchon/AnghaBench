
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stat_string; } ;


 int ETH_GSTRING_LEN ;

 int IXGB_STATS_LEN ;
 TYPE_1__* ixgb_gstrings_stats ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
ixgb_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
{
 int i;

 switch(stringset) {
 case 128:
  for (i = 0; i < IXGB_STATS_LEN; i++) {
   memcpy(data + i * ETH_GSTRING_LEN,
   ixgb_gstrings_stats[i].stat_string,
   ETH_GSTRING_LEN);
  }
  break;
 }
}
