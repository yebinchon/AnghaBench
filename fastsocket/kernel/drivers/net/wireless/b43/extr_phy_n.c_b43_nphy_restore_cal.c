
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_8__ {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_4__ phy; int wl; } ;
struct b43_phy_n_iq_comp {int dummy; } ;
struct TYPE_7__ {struct b43_phy_n_iq_comp rxcal_coeffs_5G; scalar_t__* txcal_radio_regs_5G; struct b43_phy_n_iq_comp rxcal_coeffs_2G; scalar_t__* txcal_radio_regs_2G; scalar_t__* txcal_coeffs_5G; scalar_t__* txcal_coeffs_2G; } ;
struct TYPE_6__ {int center_freq; } ;
struct TYPE_5__ {int center_freq; } ;
struct b43_phy_n {TYPE_3__ cal_cache; TYPE_2__ iqcal_chanspec_5G; TYPE_1__ iqcal_chanspec_2G; } ;


 int B43_NTAB16 (int,int) ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int b43_nphy_rx_iq_coeffs (struct b43_wldev*,int,struct b43_phy_n_iq_comp*) ;
 int b43_nphy_tx_iq_workaround (struct b43_wldev*) ;
 int b43_ntab_write_bulk (struct b43_wldev*,int ,int,scalar_t__*) ;
 int b43_radio_write (struct b43_wldev*,int,scalar_t__) ;

__attribute__((used)) static void b43_nphy_restore_cal(struct b43_wldev *dev)
{
 struct b43_phy_n *nphy = dev->phy.n;

 u16 coef[4];
 u16 *loft = ((void*)0);
 u16 *table = ((void*)0);

 int i;
 u16 *txcal_radio_regs = ((void*)0);
 struct b43_phy_n_iq_comp *rxcal_coeffs = ((void*)0);

 if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ) {
  if (!nphy->iqcal_chanspec_2G.center_freq)
   return;
  table = nphy->cal_cache.txcal_coeffs_2G;
  loft = &nphy->cal_cache.txcal_coeffs_2G[5];
 } else {
  if (!nphy->iqcal_chanspec_5G.center_freq)
   return;
  table = nphy->cal_cache.txcal_coeffs_5G;
  loft = &nphy->cal_cache.txcal_coeffs_5G[5];
 }

 b43_ntab_write_bulk(dev, B43_NTAB16(15, 80), 4, table);

 for (i = 0; i < 4; i++) {
  if (dev->phy.rev >= 3)
   table[i] = coef[i];
  else
   coef[i] = 0;
 }

 b43_ntab_write_bulk(dev, B43_NTAB16(15, 88), 4, coef);
 b43_ntab_write_bulk(dev, B43_NTAB16(15, 85), 2, loft);
 b43_ntab_write_bulk(dev, B43_NTAB16(15, 93), 2, loft);

 if (dev->phy.rev < 2)
  b43_nphy_tx_iq_workaround(dev);

 if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ) {
  txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_2G;
  rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_2G;
 } else {
  txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_5G;
  rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_5G;
 }


 if (dev->phy.rev >= 3) {
  b43_radio_write(dev, 0x2021, txcal_radio_regs[0]);
  b43_radio_write(dev, 0x2022, txcal_radio_regs[1]);
  b43_radio_write(dev, 0x3021, txcal_radio_regs[2]);
  b43_radio_write(dev, 0x3022, txcal_radio_regs[3]);
  b43_radio_write(dev, 0x2023, txcal_radio_regs[4]);
  b43_radio_write(dev, 0x2024, txcal_radio_regs[5]);
  b43_radio_write(dev, 0x3023, txcal_radio_regs[6]);
  b43_radio_write(dev, 0x3024, txcal_radio_regs[7]);
 } else {
  b43_radio_write(dev, 0x8B, txcal_radio_regs[0]);
  b43_radio_write(dev, 0xBA, txcal_radio_regs[1]);
  b43_radio_write(dev, 0x8D, txcal_radio_regs[2]);
  b43_radio_write(dev, 0xBC, txcal_radio_regs[3]);
 }
 b43_nphy_rx_iq_coeffs(dev, 1, rxcal_coeffs);
}
