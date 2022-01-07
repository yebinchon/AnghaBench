
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rt2x00_dev {TYPE_4__* bands; struct ieee80211_hw* hw; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_hw {TYPE_3__* wiphy; } ;
struct ieee80211_channel {int dummy; } ;
struct hw_mode_spec {int supported_rates; unsigned int num_channels; int supported_bands; int ht; TYPE_2__* channels_info; TYPE_1__* channels; } ;
struct TYPE_8__ {int n_channels; unsigned int n_bitrates; int ht_cap; struct ieee80211_rate* bitrates; struct ieee80211_channel* channels; } ;
struct TYPE_7__ {TYPE_4__** bands; } ;
struct TYPE_6__ {int max_power; } ;
struct TYPE_5__ {int channel; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int SUPPORT_BAND_2GHZ ;
 int SUPPORT_BAND_5GHZ ;
 int SUPPORT_RATE_CCK ;
 int SUPPORT_RATE_OFDM ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (struct ieee80211_channel*) ;
 int memcpy (int *,int *,int) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int rt2x00_get_rate (unsigned int) ;
 int rt2x00lib_channel (struct ieee80211_channel*,int ,int ,unsigned int) ;
 int rt2x00lib_rate (struct ieee80211_rate*,unsigned int,int ) ;

__attribute__((used)) static int rt2x00lib_probe_hw_modes(struct rt2x00_dev *rt2x00dev,
        struct hw_mode_spec *spec)
{
 struct ieee80211_hw *hw = rt2x00dev->hw;
 struct ieee80211_channel *channels;
 struct ieee80211_rate *rates;
 unsigned int num_rates;
 unsigned int i;

 num_rates = 0;
 if (spec->supported_rates & SUPPORT_RATE_CCK)
  num_rates += 4;
 if (spec->supported_rates & SUPPORT_RATE_OFDM)
  num_rates += 8;

 channels = kcalloc(spec->num_channels, sizeof(*channels), GFP_KERNEL);
 if (!channels)
  return -ENOMEM;

 rates = kcalloc(num_rates, sizeof(*rates), GFP_KERNEL);
 if (!rates)
  goto exit_free_channels;




 for (i = 0; i < num_rates; i++)
  rt2x00lib_rate(&rates[i], i, rt2x00_get_rate(i));




 for (i = 0; i < spec->num_channels; i++) {
  rt2x00lib_channel(&channels[i],
      spec->channels[i].channel,
      spec->channels_info[i].max_power, i);
 }






 if (spec->supported_bands & SUPPORT_BAND_2GHZ) {
  rt2x00dev->bands[IEEE80211_BAND_2GHZ].n_channels = 14;
  rt2x00dev->bands[IEEE80211_BAND_2GHZ].n_bitrates = num_rates;
  rt2x00dev->bands[IEEE80211_BAND_2GHZ].channels = channels;
  rt2x00dev->bands[IEEE80211_BAND_2GHZ].bitrates = rates;
  hw->wiphy->bands[IEEE80211_BAND_2GHZ] =
      &rt2x00dev->bands[IEEE80211_BAND_2GHZ];
  memcpy(&rt2x00dev->bands[IEEE80211_BAND_2GHZ].ht_cap,
         &spec->ht, sizeof(spec->ht));
 }






 if (spec->supported_bands & SUPPORT_BAND_5GHZ) {
  rt2x00dev->bands[IEEE80211_BAND_5GHZ].n_channels =
      spec->num_channels - 14;
  rt2x00dev->bands[IEEE80211_BAND_5GHZ].n_bitrates =
      num_rates - 4;
  rt2x00dev->bands[IEEE80211_BAND_5GHZ].channels = &channels[14];
  rt2x00dev->bands[IEEE80211_BAND_5GHZ].bitrates = &rates[4];
  hw->wiphy->bands[IEEE80211_BAND_5GHZ] =
      &rt2x00dev->bands[IEEE80211_BAND_5GHZ];
  memcpy(&rt2x00dev->bands[IEEE80211_BAND_5GHZ].ht_cap,
         &spec->ht, sizeof(spec->ht));
 }

 return 0;

 exit_free_channels:
 kfree(channels);
 rt2x00_err(rt2x00dev, "Allocation ieee80211 modes failed\n");
 return -ENOMEM;
}
