
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int stat_string; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;

 TYPE_1__* atl1_gstrings_stats ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void atl1_get_strings(struct net_device *netdev, u32 stringset,
 u8 *data)
{
 u8 *p = data;
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(atl1_gstrings_stats); i++) {
   memcpy(p, atl1_gstrings_stats[i].stat_string,
    ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  break;
 }
}
