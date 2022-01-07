
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_hw {TYPE_1__* wiphy; } ;
struct TYPE_5__ {scalar_t__ type; int supports_2ghz; int supports_5ghz; } ;
struct b43_wldev {TYPE_2__ phy; TYPE_3__* wl; } ;
struct TYPE_6__ {struct ieee80211_hw* hw; } ;
struct TYPE_4__ {int ** bands; } ;


 scalar_t__ B43_PHYTYPE_N ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int b43_band_2GHz ;
 int b43_band_5GHz_aphy ;
 int b43_band_5GHz_nphy ;

__attribute__((used)) static int b43_setup_bands(struct b43_wldev *dev,
      bool have_2ghz_phy, bool have_5ghz_phy)
{
 struct ieee80211_hw *hw = dev->wl->hw;

 if (have_2ghz_phy)
  hw->wiphy->bands[IEEE80211_BAND_2GHZ] = &b43_band_2GHz;
 if (dev->phy.type == B43_PHYTYPE_N) {
  if (have_5ghz_phy)
   hw->wiphy->bands[IEEE80211_BAND_5GHZ] = &b43_band_5GHz_nphy;
 } else {
  if (have_5ghz_phy)
   hw->wiphy->bands[IEEE80211_BAND_5GHZ] = &b43_band_5GHz_aphy;
 }

 dev->phy.supports_2ghz = have_2ghz_phy;
 dev->phy.supports_5ghz = have_5ghz_phy;

 return 0;
}
