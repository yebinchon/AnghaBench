
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_supported_band {size_t band; int n_bitrates; int n_channels; struct ieee80211_supported_band* channels; TYPE_3__* bitrates; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_hw {TYPE_2__* wiphy; struct ath5k_hw* priv; } ;
struct TYPE_4__ {int cap_mode; } ;
struct ath5k_hw {scalar_t__ ah_version; struct ieee80211_supported_band* channels; TYPE_3__** rates; struct ieee80211_supported_band* sbands; TYPE_1__ ah_capabilities; } ;
struct TYPE_6__ {int hw_value; int hw_value_short; } ;
struct TYPE_5__ {struct ieee80211_supported_band** bands; } ;


 scalar_t__ AR5K_AR5211 ;
 int AR5K_MODE_11A ;
 int AR5K_MODE_11B ;
 int AR5K_MODE_11G ;
 int ARRAY_SIZE (struct ieee80211_supported_band*) ;
 int BUILD_BUG_ON (int) ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int IEEE80211_NUM_BANDS ;
 int ath5k_debug_dump_bands (struct ath5k_hw*) ;
 int * ath5k_rates ;
 void* ath5k_setup_channels (struct ath5k_hw*,struct ieee80211_supported_band*,int ,int) ;
 int ath5k_setup_rate_idx (struct ath5k_hw*,struct ieee80211_supported_band*) ;
 int memcpy (TYPE_3__*,int *,int) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int
ath5k_setup_bands(struct ieee80211_hw *hw)
{
 struct ath5k_hw *ah = hw->priv;
 struct ieee80211_supported_band *sband;
 int max_c, count_c = 0;
 int i;

 BUILD_BUG_ON(ARRAY_SIZE(ah->sbands) < IEEE80211_NUM_BANDS);
 max_c = ARRAY_SIZE(ah->channels);


 sband = &ah->sbands[IEEE80211_BAND_2GHZ];
 sband->band = IEEE80211_BAND_2GHZ;
 sband->bitrates = &ah->rates[IEEE80211_BAND_2GHZ][0];

 if (test_bit(AR5K_MODE_11G, ah->ah_capabilities.cap_mode)) {

  memcpy(sband->bitrates, &ath5k_rates[0],
         sizeof(struct ieee80211_rate) * 12);
  sband->n_bitrates = 12;

  sband->channels = ah->channels;
  sband->n_channels = ath5k_setup_channels(ah, sband->channels,
     AR5K_MODE_11G, max_c);

  hw->wiphy->bands[IEEE80211_BAND_2GHZ] = sband;
  count_c = sband->n_channels;
  max_c -= count_c;
 } else if (test_bit(AR5K_MODE_11B, ah->ah_capabilities.cap_mode)) {

  memcpy(sband->bitrates, &ath5k_rates[0],
         sizeof(struct ieee80211_rate) * 4);
  sband->n_bitrates = 4;





  if (ah->ah_version == AR5K_AR5211) {
   for (i = 0; i < 4; i++) {
    sband->bitrates[i].hw_value =
     sband->bitrates[i].hw_value & 0xF;
    sband->bitrates[i].hw_value_short =
     sband->bitrates[i].hw_value_short & 0xF;
   }
  }

  sband->channels = ah->channels;
  sband->n_channels = ath5k_setup_channels(ah, sband->channels,
     AR5K_MODE_11B, max_c);

  hw->wiphy->bands[IEEE80211_BAND_2GHZ] = sband;
  count_c = sband->n_channels;
  max_c -= count_c;
 }
 ath5k_setup_rate_idx(ah, sband);


 if (test_bit(AR5K_MODE_11A, ah->ah_capabilities.cap_mode)) {
  sband = &ah->sbands[IEEE80211_BAND_5GHZ];
  sband->band = IEEE80211_BAND_5GHZ;
  sband->bitrates = &ah->rates[IEEE80211_BAND_5GHZ][0];

  memcpy(sband->bitrates, &ath5k_rates[4],
         sizeof(struct ieee80211_rate) * 8);
  sband->n_bitrates = 8;

  sband->channels = &ah->channels[count_c];
  sband->n_channels = ath5k_setup_channels(ah, sband->channels,
     AR5K_MODE_11A, max_c);

  hw->wiphy->bands[IEEE80211_BAND_5GHZ] = sband;
 }
 ath5k_setup_rate_idx(ah, sband);

 ath5k_debug_dump_bands(ah);

 return 0;
}
