
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_BAND_2GHZ ;

__attribute__((used)) static u16 iwl_mvm_get_passive_dwell(enum ieee80211_band band)
{
 return band == IEEE80211_BAND_2GHZ ? 100 + 20 : 100 + 10;
}
