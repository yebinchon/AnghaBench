
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct il_priv {int dummy; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_BAND_5GHZ ;
 int IL_ACTIVE_DWELL_FACTOR_24GHZ ;
 int IL_ACTIVE_DWELL_FACTOR_52GHZ ;
 scalar_t__ IL_ACTIVE_DWELL_TIME_24 ;
 scalar_t__ IL_ACTIVE_DWELL_TIME_52 ;

u16
il_get_active_dwell_time(struct il_priv *il, enum ieee80211_band band,
    u8 n_probes)
{
 if (band == IEEE80211_BAND_5GHZ)
  return IL_ACTIVE_DWELL_TIME_52 +
      IL_ACTIVE_DWELL_FACTOR_52GHZ * (n_probes + 1);
 else
  return IL_ACTIVE_DWELL_TIME_24 +
      IL_ACTIVE_DWELL_FACTOR_24GHZ * (n_probes + 1);
}
