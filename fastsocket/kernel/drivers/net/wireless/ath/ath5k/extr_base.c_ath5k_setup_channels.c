
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {unsigned int center_freq; int band; unsigned int hw_value; } ;
struct ath5k_hw {int dummy; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;





 int ATH5K_WARN (struct ath5k_hw*,char*) ;
 int IEEE80211_BAND_2GHZ ;
 int IEEE80211_BAND_5GHZ ;
 int ath5k_channel_ok (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_is_standard_channel (unsigned int,int) ;
 unsigned int ieee80211_channel_to_frequency (unsigned int,int) ;

__attribute__((used)) static unsigned int
ath5k_setup_channels(struct ath5k_hw *ah, struct ieee80211_channel *channels,
  unsigned int mode, unsigned int max)
{
 unsigned int count, size, freq, ch;
 enum ieee80211_band band;

 switch (mode) {
 case 130:

  size = 220;
  band = IEEE80211_BAND_5GHZ;
  break;
 case 129:
 case 128:
  size = 26;
  band = IEEE80211_BAND_2GHZ;
  break;
 default:
  ATH5K_WARN(ah, "bad mode, not copying channels\n");
  return 0;
 }

 count = 0;
 for (ch = 1; ch <= size && count < max; ch++) {
  freq = ieee80211_channel_to_frequency(ch, band);

  if (freq == 0)
   continue;


  channels[count].center_freq = freq;
  channels[count].band = band;
  channels[count].hw_value = mode;


  if (!ath5k_channel_ok(ah, &channels[count]))
   continue;

  if (!ath5k_is_standard_channel(ch, band))
   continue;

  count++;
 }

 return count;
}
