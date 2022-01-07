
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;

__attribute__((used)) static u8 wl1271_tx_get_rate_flags(u8 rate_class_index)
{
 u8 flags = 0;





 if (rate_class_index <= 8)
  flags |= IEEE80211_TX_RC_MCS;





 if (rate_class_index == 0)
  flags |= IEEE80211_TX_RC_SHORT_GI;

 return flags;
}
