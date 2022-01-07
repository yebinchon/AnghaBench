
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 int ETH_GSTRING_LEN ;

 unsigned int enic_n_rx_stats ;
 unsigned int enic_n_tx_stats ;
 TYPE_2__* enic_rx_stats ;
 TYPE_1__* enic_tx_stats ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void enic_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
{
 unsigned int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < enic_n_tx_stats; i++) {
   memcpy(data, enic_tx_stats[i].name, ETH_GSTRING_LEN);
   data += ETH_GSTRING_LEN;
  }
  for (i = 0; i < enic_n_rx_stats; i++) {
   memcpy(data, enic_rx_stats[i].name, ETH_GSTRING_LEN);
   data += ETH_GSTRING_LEN;
  }
  break;
 }
}
