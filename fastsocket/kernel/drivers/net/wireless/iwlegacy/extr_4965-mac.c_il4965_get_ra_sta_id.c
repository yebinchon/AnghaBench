
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_priv {scalar_t__ iw_mode; } ;
struct ieee80211_hdr {int dummy; } ;


 int IL_AP_ID ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int * ieee80211_get_DA (struct ieee80211_hdr*) ;
 int il4965_find_station (struct il_priv*,int *) ;

__attribute__((used)) static int
il4965_get_ra_sta_id(struct il_priv *il, struct ieee80211_hdr *hdr)
{
 if (il->iw_mode == NL80211_IFTYPE_STATION)
  return IL_AP_ID;
 else {
  u8 *da = ieee80211_get_DA(hdr);

  return il4965_find_station(il, da);
 }
}
