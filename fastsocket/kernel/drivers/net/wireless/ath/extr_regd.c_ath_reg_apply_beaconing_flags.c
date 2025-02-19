
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {unsigned int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_reg_rule {int flags; } ;
struct ieee80211_channel {int flags; scalar_t__ beacon_found; int center_freq; } ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_CHAN_NO_IBSS ;
 int IEEE80211_CHAN_PASSIVE_SCAN ;
 int IEEE80211_CHAN_RADAR ;
 int IEEE80211_NUM_BANDS ;
 scalar_t__ IS_ERR (struct ieee80211_reg_rule const*) ;
 int NL80211_REGDOM_SET_BY_COUNTRY_IE ;
 int NL80211_RRF_NO_IBSS ;
 int NL80211_RRF_PASSIVE_SCAN ;
 scalar_t__ ath_is_radar_freq (int ) ;
 struct ieee80211_reg_rule* freq_reg_info (struct wiphy*,int ) ;

__attribute__((used)) static void
ath_reg_apply_beaconing_flags(struct wiphy *wiphy,
         enum nl80211_reg_initiator initiator)
{
 enum ieee80211_band band;
 struct ieee80211_supported_band *sband;
 const struct ieee80211_reg_rule *reg_rule;
 struct ieee80211_channel *ch;
 unsigned int i;

 for (band = 0; band < IEEE80211_NUM_BANDS; band++) {

  if (!wiphy->bands[band])
   continue;

  sband = wiphy->bands[band];

  for (i = 0; i < sband->n_channels; i++) {

   ch = &sband->channels[i];

   if (ath_is_radar_freq(ch->center_freq) ||
       (ch->flags & IEEE80211_CHAN_RADAR))
    continue;

   if (initiator == NL80211_REGDOM_SET_BY_COUNTRY_IE) {
    reg_rule = freq_reg_info(wiphy, ch->center_freq);
    if (IS_ERR(reg_rule))
     continue;
    if (!(reg_rule->flags &
        NL80211_RRF_NO_IBSS))
     ch->flags &=
       ~IEEE80211_CHAN_NO_IBSS;
    if (!(reg_rule->flags &
        NL80211_RRF_PASSIVE_SCAN))
     ch->flags &=
       ~IEEE80211_CHAN_PASSIVE_SCAN;
   } else {
    if (ch->beacon_found)
     ch->flags &= ~(IEEE80211_CHAN_NO_IBSS |
       IEEE80211_CHAN_PASSIVE_SCAN);
   }
  }
 }

}
