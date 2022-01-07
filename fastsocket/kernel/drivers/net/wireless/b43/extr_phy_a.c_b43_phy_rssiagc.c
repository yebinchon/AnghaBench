
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_OFDMTAB_LNAHPFGAIN1 ;
 int B43_OFDMTAB_WRSSI ;
 int B43_TAB_RSSIAGC1_SIZE ;
 int B43_TAB_RSSIAGC2_SIZE ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int,int) ;
 int* b43_tab_rssiagc1 ;
 int* b43_tab_rssiagc2 ;

__attribute__((used)) static void b43_phy_rssiagc(struct b43_wldev *dev, u8 enable)
{
 int i;

 if (dev->phy.rev < 3) {
  if (enable)
   for (i = 0; i < B43_TAB_RSSIAGC1_SIZE; i++) {
    b43_ofdmtab_write16(dev,
     B43_OFDMTAB_LNAHPFGAIN1, i, 0xFFF8);
    b43_ofdmtab_write16(dev,
     B43_OFDMTAB_WRSSI, i, 0xFFF8);
   }
  else
   for (i = 0; i < B43_TAB_RSSIAGC1_SIZE; i++) {
    b43_ofdmtab_write16(dev,
     B43_OFDMTAB_LNAHPFGAIN1, i, b43_tab_rssiagc1[i]);
    b43_ofdmtab_write16(dev,
     B43_OFDMTAB_WRSSI, i, b43_tab_rssiagc1[i]);
   }
 } else {
  if (enable)
   for (i = 0; i < B43_TAB_RSSIAGC1_SIZE; i++)
    b43_ofdmtab_write16(dev,
     B43_OFDMTAB_WRSSI, i, 0x0820);
  else
   for (i = 0; i < B43_TAB_RSSIAGC2_SIZE; i++)
    b43_ofdmtab_write16(dev,
     B43_OFDMTAB_WRSSI, i, b43_tab_rssiagc2[i]);
 }
}
