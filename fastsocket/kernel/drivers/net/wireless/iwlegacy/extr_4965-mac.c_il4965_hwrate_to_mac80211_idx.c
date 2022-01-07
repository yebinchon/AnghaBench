
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_2__ {int plcp; } ;


 int IEEE80211_BAND_5GHZ ;
 int IL_FIRST_OFDM_RATE ;
 int RATE_COUNT_LEGACY ;
 int RATE_MCS_HT_MSK ;
 TYPE_1__* il_rates ;

int
il4965_hwrate_to_mac80211_idx(u32 rate_n_flags, enum ieee80211_band band)
{
 int idx = 0;
 int band_offset = 0;


 if (rate_n_flags & RATE_MCS_HT_MSK) {
  idx = (rate_n_flags & 0xff);
  return idx;

 } else {
  if (band == IEEE80211_BAND_5GHZ)
   band_offset = IL_FIRST_OFDM_RATE;
  for (idx = band_offset; idx < RATE_COUNT_LEGACY; idx++)
   if (il_rates[idx].plcp == (rate_n_flags & 0xFF))
    return idx - band_offset;
 }

 return -1;
}
