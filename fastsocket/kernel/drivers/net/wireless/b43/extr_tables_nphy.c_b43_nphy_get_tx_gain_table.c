
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int extpa_gain; } ;
struct TYPE_10__ {TYPE_4__ ghz5; } ;
struct ssb_sprom {TYPE_5__ fem; } ;
struct TYPE_8__ {int rev; TYPE_2__* n; } ;
struct b43_wldev {TYPE_3__ phy; int wl; TYPE_1__* dev; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_7__ {scalar_t__ ipa5g_on; scalar_t__ ipa2g_on; } ;
struct TYPE_6__ {struct ssb_sprom* bus_sprom; } ;


 int IEEE80211_BAND_2GHZ ;
 int IEEE80211_BAND_5GHZ ;
 int b43_current_band (int ) ;
 int const* b43_nphy_get_ipa_gain_table (struct b43_wldev*) ;
 int const* b43_ntab_tx_gain_rev0_1_2 ;
 int const* b43_ntab_tx_gain_rev3_5ghz ;
 int const* b43_ntab_tx_gain_rev3plus_2ghz ;
 int const* b43_ntab_tx_gain_rev4_5ghz ;
 int const* b43_ntab_tx_gain_rev5plus_5ghz ;

const u32 *b43_nphy_get_tx_gain_table(struct b43_wldev *dev)
{
 enum ieee80211_band band = b43_current_band(dev->wl);
 struct ssb_sprom *sprom = dev->dev->bus_sprom;

 if (dev->phy.rev < 3)
  return b43_ntab_tx_gain_rev0_1_2;


 if ((dev->phy.n->ipa2g_on && band == IEEE80211_BAND_2GHZ) ||
     (dev->phy.n->ipa5g_on && band == IEEE80211_BAND_5GHZ)) {
  return b43_nphy_get_ipa_gain_table(dev);
 } else if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) {
  if (dev->phy.rev == 3)
   return b43_ntab_tx_gain_rev3_5ghz;
  if (dev->phy.rev == 4)
   return sprom->fem.ghz5.extpa_gain == 3 ?
    b43_ntab_tx_gain_rev4_5ghz :
    b43_ntab_tx_gain_rev4_5ghz;
  else
   return b43_ntab_tx_gain_rev5plus_5ghz;
 } else {
  if (dev->phy.rev >= 5 && sprom->fem.ghz5.extpa_gain == 3)
   return b43_ntab_tx_gain_rev3plus_2ghz;
  else
   return b43_ntab_tx_gain_rev3plus_2ghz;
 }
}
