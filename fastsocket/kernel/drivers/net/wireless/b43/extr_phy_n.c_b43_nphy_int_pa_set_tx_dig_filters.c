
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int channel; scalar_t__ is_40mhz; } ;
struct b43_wldev {TYPE_1__ phy; int wl; } ;


 int B43_PHY_N (int const) ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int ) ;
 int ** tbl_tx_filter_coef_rev4 ;

__attribute__((used)) static void b43_nphy_int_pa_set_tx_dig_filters(struct b43_wldev *dev)
{
 int i, j;

 static const u16 offset[] = { 0x186, 0x195, 0x2C5 };

 for (i = 0; i < 3; i++)
  for (j = 0; j < 15; j++)
   b43_phy_write(dev, B43_PHY_N(offset[i] + j),
     tbl_tx_filter_coef_rev4[i][j]);

 if (dev->phy.is_40mhz) {
  for (j = 0; j < 15; j++)
   b43_phy_write(dev, B43_PHY_N(offset[0] + j),
     tbl_tx_filter_coef_rev4[3][j]);
 } else if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) {
  for (j = 0; j < 15; j++)
   b43_phy_write(dev, B43_PHY_N(offset[0] + j),
     tbl_tx_filter_coef_rev4[5][j]);
 }

 if (dev->phy.channel == 14)
  for (j = 0; j < 15; j++)
   b43_phy_write(dev, B43_PHY_N(offset[0] + j),
     tbl_tx_filter_coef_rev4[6][j]);
}
