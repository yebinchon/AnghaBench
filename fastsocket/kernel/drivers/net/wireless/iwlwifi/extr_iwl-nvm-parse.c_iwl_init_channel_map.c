
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_nvm_data {struct ieee80211_channel* channels; } ;
struct iwl_cfg {int dummy; } ;
struct ieee80211_channel {scalar_t__ band; scalar_t__ max_power; scalar_t__ hw_value; int flags; int center_freq; } ;
struct device {int dummy; } ;
typedef int __le16 ;


 int ACTIVE ;
 int CHECK_AND_PRINT_I (int ) ;
 int DFS ;
 scalar_t__ FIRST_2GHZ_HT_MINUS ;
 int IBSS ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 int IEEE80211_CHAN_NO_160MHZ ;
 int IEEE80211_CHAN_NO_80MHZ ;
 int IEEE80211_CHAN_NO_HT40 ;
 int IEEE80211_CHAN_NO_HT40MINUS ;
 int IEEE80211_CHAN_NO_HT40PLUS ;
 int IEEE80211_CHAN_NO_IBSS ;
 int IEEE80211_CHAN_PASSIVE_SCAN ;
 int IEEE80211_CHAN_RADAR ;
 int IWL_DEBUG_EEPROM (struct device*,char*,scalar_t__,...) ;
 int IWL_NUM_CHANNELS ;
 scalar_t__ LAST_2GHZ_HT_PLUS ;
 scalar_t__ LAST_5GHZ_HT ;
 int NUM_2GHZ_CHANNELS ;
 int NVM_CHANNEL_160MHZ ;
 int NVM_CHANNEL_40MHZ ;
 int NVM_CHANNEL_80MHZ ;
 int NVM_CHANNEL_ACTIVE ;
 int NVM_CHANNEL_IBSS ;
 int NVM_CHANNEL_RADAR ;
 int NVM_CHANNEL_VALID ;
 int RADAR ;
 int VALID ;
 int WIDE ;
 int __le16_to_cpup (int const* const) ;
 int ieee80211_channel_to_frequency (scalar_t__,scalar_t__) ;
 scalar_t__* iwl_nvm_channels ;

__attribute__((used)) static int iwl_init_channel_map(struct device *dev, const struct iwl_cfg *cfg,
    struct iwl_nvm_data *data,
    const __le16 * const nvm_ch_flags)
{
 int ch_idx;
 int n_channels = 0;
 struct ieee80211_channel *channel;
 u16 ch_flags;
 bool is_5ghz;

 for (ch_idx = 0; ch_idx < IWL_NUM_CHANNELS; ch_idx++) {
  ch_flags = __le16_to_cpup(nvm_ch_flags + ch_idx);
  if (!(ch_flags & NVM_CHANNEL_VALID)) {
   IWL_DEBUG_EEPROM(dev,
      "Ch. %d Flags %x [%sGHz] - No traffic\n",
      iwl_nvm_channels[ch_idx],
      ch_flags,
      (ch_idx >= NUM_2GHZ_CHANNELS) ?
      "5.2" : "2.4");
   continue;
  }

  channel = &data->channels[n_channels];
  n_channels++;

  channel->hw_value = iwl_nvm_channels[ch_idx];
  channel->band = (ch_idx < NUM_2GHZ_CHANNELS) ?
    IEEE80211_BAND_2GHZ : IEEE80211_BAND_5GHZ;
  channel->center_freq =
   ieee80211_channel_to_frequency(
    channel->hw_value, channel->band);


  channel->flags = IEEE80211_CHAN_NO_HT40;
  if (ch_idx < NUM_2GHZ_CHANNELS &&
      (ch_flags & NVM_CHANNEL_40MHZ)) {
   if (iwl_nvm_channels[ch_idx] <= LAST_2GHZ_HT_PLUS)
    channel->flags &= ~IEEE80211_CHAN_NO_HT40PLUS;
   if (iwl_nvm_channels[ch_idx] >= FIRST_2GHZ_HT_MINUS)
    channel->flags &= ~IEEE80211_CHAN_NO_HT40MINUS;
  } else if (iwl_nvm_channels[ch_idx] <= LAST_5GHZ_HT &&
      (ch_flags & NVM_CHANNEL_40MHZ)) {
   if ((ch_idx - NUM_2GHZ_CHANNELS) % 2 == 0)
    channel->flags &= ~IEEE80211_CHAN_NO_HT40PLUS;
   else
    channel->flags &= ~IEEE80211_CHAN_NO_HT40MINUS;
  }
  if (!(ch_flags & NVM_CHANNEL_80MHZ))
   channel->flags |= IEEE80211_CHAN_NO_80MHZ;
  if (!(ch_flags & NVM_CHANNEL_160MHZ))
   channel->flags |= IEEE80211_CHAN_NO_160MHZ;

  if (!(ch_flags & NVM_CHANNEL_IBSS))
   channel->flags |= IEEE80211_CHAN_NO_IBSS;

  if (!(ch_flags & NVM_CHANNEL_ACTIVE))
   channel->flags |= IEEE80211_CHAN_PASSIVE_SCAN;

  if (ch_flags & NVM_CHANNEL_RADAR)
   channel->flags |= IEEE80211_CHAN_RADAR;




  channel->max_power = 0;
  is_5ghz = channel->band == IEEE80211_BAND_5GHZ;
  IWL_DEBUG_EEPROM(dev,
     "Ch. %d [%sGHz] %s%s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\n",
     channel->hw_value,
     is_5ghz ? "5.2" : "2.4",
     CHECK_AND_PRINT_I(VALID),
     CHECK_AND_PRINT_I(IBSS),
     CHECK_AND_PRINT_I(ACTIVE),
     CHECK_AND_PRINT_I(RADAR),
     CHECK_AND_PRINT_I(WIDE),
     CHECK_AND_PRINT_I(DFS),
     ch_flags,
     channel->max_power,
     ((ch_flags & NVM_CHANNEL_IBSS) &&
      !(ch_flags & NVM_CHANNEL_RADAR))
     ? "" : "not ");
 }

 return n_channels;
}
