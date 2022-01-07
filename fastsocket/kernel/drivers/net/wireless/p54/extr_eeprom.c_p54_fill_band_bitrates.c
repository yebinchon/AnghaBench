
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_supported_band {void* n_bitrates; void* bitrates; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 void* ARRAY_SIZE (void*) ;
 int EINVAL ;


 void* p54_arates ;
 void* p54_bgrates ;

__attribute__((used)) static int p54_fill_band_bitrates(struct ieee80211_hw *dev,
      struct ieee80211_supported_band *band_entry,
      enum ieee80211_band band)
{


 switch (band) {
 case 129:
  band_entry->bitrates = p54_bgrates;
  band_entry->n_bitrates = ARRAY_SIZE(p54_bgrates);
  break;
 case 128:
  band_entry->bitrates = p54_arates;
  band_entry->n_bitrates = ARRAY_SIZE(p54_arates);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
