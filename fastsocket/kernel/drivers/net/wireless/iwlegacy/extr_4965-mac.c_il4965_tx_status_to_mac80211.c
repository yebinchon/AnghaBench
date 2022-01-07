
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IEEE80211_TX_STAT_ACK ;
 int IEEE80211_TX_STAT_TX_FILTERED ;


 int TX_STATUS_MSK ;


__attribute__((used)) static inline u32
il4965_tx_status_to_mac80211(u32 status)
{
 status &= TX_STATUS_MSK;

 switch (status) {
 case 128:
 case 130:
  return IEEE80211_TX_STAT_ACK;
 case 129:
  return IEEE80211_TX_STAT_TX_FILTERED;
 default:
  return 0;
 }
}
