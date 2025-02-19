
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_nvm_data {struct ieee80211_channel* channels; } ;
struct iwl_eeprom_enhanced_txpwr {int flags; scalar_t__ channel; } ;
struct ieee80211_channel {scalar_t__ hw_value; int band; scalar_t__ max_power; } ;
typedef scalar_t__ s8 ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_BAND_2GHZ ;
 int IEEE80211_BAND_5GHZ ;
 int IWL_EEPROM_ENH_TXP_FL_40MHZ ;
 int IWL_EEPROM_ENH_TXP_FL_BAND_52G ;

__attribute__((used)) static void
iwl_eeprom_enh_txp_read_element(struct iwl_nvm_data *data,
    struct iwl_eeprom_enhanced_txpwr *txp,
    int n_channels, s8 max_txpower_avg)
{
 int ch_idx;
 enum ieee80211_band band;

 band = txp->flags & IWL_EEPROM_ENH_TXP_FL_BAND_52G ?
  IEEE80211_BAND_5GHZ : IEEE80211_BAND_2GHZ;

 for (ch_idx = 0; ch_idx < n_channels; ch_idx++) {
  struct ieee80211_channel *chan = &data->channels[ch_idx];


  if (txp->channel != 0 && chan->hw_value != txp->channel)
   continue;


  if (band != chan->band)
   continue;

  if (chan->max_power < max_txpower_avg &&
      !(txp->flags & IWL_EEPROM_ENH_TXP_FL_40MHZ))
   chan->max_power = max_txpower_avg;
 }
}
