
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {struct ieee80211_channel* channels; } ;
struct ieee80211_reg_rule {int flags; } ;
struct ieee80211_channel {int flags; int center_freq; } ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;


 size_t IEEE80211_BAND_2GHZ ;
 int IEEE80211_CHAN_PASSIVE_SCAN ;
 int IS_ERR (struct ieee80211_reg_rule const*) ;
 int NL80211_REGDOM_SET_BY_COUNTRY_IE ;
 int NL80211_RRF_PASSIVE_SCAN ;
 struct ieee80211_reg_rule* freq_reg_info (struct wiphy*,int ) ;

__attribute__((used)) static void
ath_reg_apply_active_scan_flags(struct wiphy *wiphy,
    enum nl80211_reg_initiator initiator)
{
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *ch;
 const struct ieee80211_reg_rule *reg_rule;

 sband = wiphy->bands[IEEE80211_BAND_2GHZ];
 if (!sband)
  return;





 if (initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE) {
  ch = &sband->channels[11];
  if (ch->flags & IEEE80211_CHAN_PASSIVE_SCAN)
   ch->flags &= ~IEEE80211_CHAN_PASSIVE_SCAN;
  ch = &sband->channels[12];
  if (ch->flags & IEEE80211_CHAN_PASSIVE_SCAN)
   ch->flags &= ~IEEE80211_CHAN_PASSIVE_SCAN;
  return;
 }
 ch = &sband->channels[11];
 reg_rule = freq_reg_info(wiphy, ch->center_freq);
 if (!IS_ERR(reg_rule)) {
  if (!(reg_rule->flags & NL80211_RRF_PASSIVE_SCAN))
   if (ch->flags & IEEE80211_CHAN_PASSIVE_SCAN)
    ch->flags &= ~IEEE80211_CHAN_PASSIVE_SCAN;
 }

 ch = &sband->channels[12];
 reg_rule = freq_reg_info(wiphy, ch->center_freq);
 if (!IS_ERR(reg_rule)) {
  if (!(reg_rule->flags & NL80211_RRF_PASSIVE_SCAN))
   if (ch->flags & IEEE80211_CHAN_PASSIVE_SCAN)
    ch->flags &= ~IEEE80211_CHAN_PASSIVE_SCAN;
 }
}
