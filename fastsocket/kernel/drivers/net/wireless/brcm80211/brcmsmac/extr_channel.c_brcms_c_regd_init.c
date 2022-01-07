
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int flags; int reg_notifier; struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int flags; int hw_value; } ;
struct brcms_regd {int regdomain; } ;
struct brcms_chanvec {int vec; } ;
struct brcms_c_info {struct wiphy* wiphy; struct brcms_band** bandstate; TYPE_2__* pub; TYPE_1__* cmi; } ;
struct brcms_band {int bandtype; int pi; } ;
struct TYPE_4__ {int _nbands; } ;
struct TYPE_3__ {struct brcms_regd* world_regd; } ;


 int BAND_2G_INDEX ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int IEEE80211_CHAN_DISABLED ;
 int NL80211_REGDOM_SET_BY_DRIVER ;
 int WIPHY_FLAG_CUSTOM_REGULATORY ;
 int WIPHY_FLAG_STRICT_REGULATORY ;
 int brcms_reg_apply_beaconing_flags (struct wiphy*,int ) ;
 int brcms_reg_notifier ;
 int isset (int ,int ) ;
 int wiphy_apply_custom_regulatory (struct wiphy*,int ) ;
 int wlc_phy_chanspec_band_validch (int ,int ,struct brcms_chanvec*) ;

void brcms_c_regd_init(struct brcms_c_info *wlc)
{
 struct wiphy *wiphy = wlc->wiphy;
 const struct brcms_regd *regd = wlc->cmi->world_regd;
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *ch;
 struct brcms_chanvec sup_chan;
 struct brcms_band *band;
 int band_idx, i;


 for (band_idx = 0; band_idx < wlc->pub->_nbands; band_idx++) {
  band = wlc->bandstate[band_idx];

  wlc_phy_chanspec_band_validch(band->pi, band->bandtype,
           &sup_chan);

  if (band_idx == BAND_2G_INDEX)
   sband = wiphy->bands[IEEE80211_BAND_2GHZ];
  else
   sband = wiphy->bands[IEEE80211_BAND_5GHZ];

  for (i = 0; i < sband->n_channels; i++) {
   ch = &sband->channels[i];
   if (!isset(sup_chan.vec, ch->hw_value))
    ch->flags |= IEEE80211_CHAN_DISABLED;
  }
 }

 wlc->wiphy->reg_notifier = brcms_reg_notifier;
 wlc->wiphy->flags |= WIPHY_FLAG_CUSTOM_REGULATORY |
        WIPHY_FLAG_STRICT_REGULATORY;
 wiphy_apply_custom_regulatory(wlc->wiphy, regd->regdomain);
 brcms_reg_apply_beaconing_flags(wiphy, NL80211_REGDOM_SET_BY_DRIVER);
}
