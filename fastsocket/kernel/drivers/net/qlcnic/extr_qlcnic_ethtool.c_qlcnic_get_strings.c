
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qlcnic_adapter {int flags; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stat_string; } ;


 int ARRAY_SIZE (int *) ;
 int ETH_GSTRING_LEN ;


 int QLCNIC_ESWITCH_ENABLED ;
 int QLCNIC_STATS_LEN ;
 int QLCNIC_TEST_LEN ;
 int memcpy (int *,int ,int) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int * qlcnic_83xx_mac_stats_strings ;
 int * qlcnic_83xx_rx_stats_strings ;
 int * qlcnic_83xx_tx_stats_strings ;
 int * qlcnic_device_gstrings_stats ;
 TYPE_1__* qlcnic_gstrings_stats ;
 int * qlcnic_gstrings_test ;

__attribute__((used)) static void
qlcnic_get_strings(struct net_device *dev, u32 stringset, u8 * data)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);
 int index, i, num_stats;

 switch (stringset) {
 case 128:
  memcpy(data, *qlcnic_gstrings_test,
         QLCNIC_TEST_LEN * ETH_GSTRING_LEN);
  break;
 case 129:
  for (index = 0; index < QLCNIC_STATS_LEN; index++) {
   memcpy(data + index * ETH_GSTRING_LEN,
          qlcnic_gstrings_stats[index].stat_string,
          ETH_GSTRING_LEN);
  }
  if (qlcnic_83xx_check(adapter)) {
   num_stats = ARRAY_SIZE(qlcnic_83xx_tx_stats_strings);
   for (i = 0; i < num_stats; i++, index++)
    memcpy(data + index * ETH_GSTRING_LEN,
           qlcnic_83xx_tx_stats_strings[i],
           ETH_GSTRING_LEN);
   num_stats = ARRAY_SIZE(qlcnic_83xx_mac_stats_strings);
   for (i = 0; i < num_stats; i++, index++)
    memcpy(data + index * ETH_GSTRING_LEN,
           qlcnic_83xx_mac_stats_strings[i],
           ETH_GSTRING_LEN);
   num_stats = ARRAY_SIZE(qlcnic_83xx_rx_stats_strings);
   for (i = 0; i < num_stats; i++, index++)
    memcpy(data + index * ETH_GSTRING_LEN,
           qlcnic_83xx_rx_stats_strings[i],
           ETH_GSTRING_LEN);
   return;
  } else {
   num_stats = ARRAY_SIZE(qlcnic_83xx_mac_stats_strings);
   for (i = 0; i < num_stats; i++, index++)
    memcpy(data + index * ETH_GSTRING_LEN,
           qlcnic_83xx_mac_stats_strings[i],
           ETH_GSTRING_LEN);
  }
  if (!(adapter->flags & QLCNIC_ESWITCH_ENABLED))
   return;
  num_stats = ARRAY_SIZE(qlcnic_device_gstrings_stats);
  for (i = 0; i < num_stats; index++, i++) {
   memcpy(data + index * ETH_GSTRING_LEN,
          qlcnic_device_gstrings_stats[i],
          ETH_GSTRING_LEN);
  }
 }
}
