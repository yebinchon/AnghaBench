
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int rev; int is_40mhz; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_n {int * tx_power_offset; int * adj_pwr_tbl; } ;



__attribute__((used)) static void b43_nphy_tx_prepare_adjusted_power_table(struct b43_wldev *dev)
{
 struct b43_phy_n *nphy = dev->phy.n;

 u8 idx, delta;
 u8 i, stf_mode;

 for (i = 0; i < 4; i++)
  nphy->adj_pwr_tbl[i] = nphy->tx_power_offset[i];

 for (stf_mode = 0; stf_mode < 4; stf_mode++) {
  delta = 0;
  switch (stf_mode) {
  case 0:
   if (dev->phy.is_40mhz && dev->phy.rev >= 5) {
    idx = 68;
   } else {
    delta = 1;
    idx = dev->phy.is_40mhz ? 52 : 4;
   }
   break;
  case 1:
   idx = dev->phy.is_40mhz ? 76 : 28;
   break;
  case 2:
   idx = dev->phy.is_40mhz ? 84 : 36;
   break;
  case 3:
   idx = dev->phy.is_40mhz ? 92 : 44;
   break;
  }

  for (i = 0; i < 20; i++) {
   nphy->adj_pwr_tbl[4 + 4 * i + stf_mode] =
    nphy->tx_power_offset[idx];
   if (i == 0)
    idx += delta;
   if (i == 14)
    idx += 1 - delta;
   if (i == 3 || i == 4 || i == 7 || i == 8 || i == 11 ||
       i == 13)
    idx += 1;
  }
 }
}
