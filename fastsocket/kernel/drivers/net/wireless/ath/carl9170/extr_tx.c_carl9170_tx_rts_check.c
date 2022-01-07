
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_rate {int flags; } ;
struct ar9170 {int erp_mode; } ;





 int IEEE80211_TX_RC_USE_RTS_CTS ;
 int likely (int) ;

__attribute__((used)) static bool carl9170_tx_rts_check(struct ar9170 *ar,
      struct ieee80211_tx_rate *rate,
      bool ampdu, bool multi)
{
 switch (ar->erp_mode) {
 case 130:
  if (ampdu)
   break;

 case 129:
  if (!(rate->flags & IEEE80211_TX_RC_USE_RTS_CTS))
   break;

 case 128:
  if (likely(!multi))
   return 1;

 default:
  break;
 }

 return 0;
}
