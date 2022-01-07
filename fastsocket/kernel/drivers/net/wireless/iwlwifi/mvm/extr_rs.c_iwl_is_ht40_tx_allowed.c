
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {scalar_t__ bandwidth; } ;


 scalar_t__ IEEE80211_STA_RX_BW_40 ;

__attribute__((used)) static bool iwl_is_ht40_tx_allowed(struct ieee80211_sta *sta)
{
 return sta->bandwidth >= IEEE80211_STA_RX_BW_40;
}
