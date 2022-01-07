
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct net_device {int dummy; } ;
struct be_adapter {int num_rx_qs; int num_tx_qs; } ;
struct TYPE_6__ {char* desc; } ;
struct TYPE_5__ {int desc; } ;
struct TYPE_4__ {char* desc; } ;


 int ETHTOOL_RXSTATS_NUM ;
 int ETHTOOL_STATS_NUM ;
 int ETHTOOL_TESTS_NUM ;
 int ETHTOOL_TXSTATS_NUM ;
 int ETH_GSTRING_LEN ;


 TYPE_3__* et_rx_stats ;
 int * et_self_tests ;
 TYPE_2__* et_stats ;
 TYPE_1__* et_tx_stats ;
 int memcpy (int *,int ,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int sprintf (int *,char*,int,char*) ;

__attribute__((used)) static void
be_get_stat_strings(struct net_device *netdev, uint32_t stringset,
  uint8_t *data)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 int i, j;

 switch (stringset) {
 case 129:
  for (i = 0; i < ETHTOOL_STATS_NUM; i++) {
   memcpy(data, et_stats[i].desc, ETH_GSTRING_LEN);
   data += ETH_GSTRING_LEN;
  }
  for (i = 0; i < adapter->num_rx_qs; i++) {
   for (j = 0; j < ETHTOOL_RXSTATS_NUM; j++) {
    sprintf(data, "rxq%d: %s", i,
     et_rx_stats[j].desc);
    data += ETH_GSTRING_LEN;
   }
  }
  for (i = 0; i < adapter->num_tx_qs; i++) {
   for (j = 0; j < ETHTOOL_TXSTATS_NUM; j++) {
    sprintf(data, "txq%d: %s", i,
     et_tx_stats[j].desc);
    data += ETH_GSTRING_LEN;
   }
  }
  break;
 case 128:
  for (i = 0; i < ETHTOOL_TESTS_NUM; i++) {
   memcpy(data, et_self_tests[i], ETH_GSTRING_LEN);
   data += ETH_GSTRING_LEN;
  }
  break;
 }
}
