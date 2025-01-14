
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int rev; } ;
struct b43_wldev {TYPE_2__ phy; TYPE_1__* dev; int wl; } ;
struct TYPE_3__ {int chip_id; } ;


 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int const* txpwrctrl_tx_gain_ipa ;
 int const* txpwrctrl_tx_gain_ipa_5g ;
 int const* txpwrctrl_tx_gain_ipa_rev5 ;
 int const* txpwrctrl_tx_gain_ipa_rev6 ;

__attribute__((used)) static const u32 *b43_nphy_get_ipa_gain_table(struct b43_wldev *dev)
{
 if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ) {
  if (dev->phy.rev >= 6) {
   if (dev->dev->chip_id == 47162)
    return txpwrctrl_tx_gain_ipa_rev5;
   return txpwrctrl_tx_gain_ipa_rev6;
  } else if (dev->phy.rev >= 5) {
   return txpwrctrl_tx_gain_ipa_rev5;
  } else {
   return txpwrctrl_tx_gain_ipa;
  }
 } else {
  return txpwrctrl_tx_gain_ipa_5g;
 }
}
