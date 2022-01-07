
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dummy; } ;
struct ath_rate_table {int dummy; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;




 struct ath_rate_table const ar5416_11a_ratetable ;
 struct ath_rate_table const ar5416_11g_ratetable ;
 struct ath_rate_table const ar5416_11na_ratetable ;
 struct ath_rate_table const ar5416_11ng_ratetable ;

__attribute__((used)) static const
struct ath_rate_table *ath_choose_rate_table(struct ath_softc *sc,
          enum ieee80211_band band,
          bool is_ht)
{
 switch(band) {
 case 129:
  if (is_ht)
   return &ar5416_11ng_ratetable;
  return &ar5416_11g_ratetable;
 case 128:
  if (is_ht)
   return &ar5416_11na_ratetable;
  return &ar5416_11a_ratetable;
 default:
  return ((void*)0);
 }
}
