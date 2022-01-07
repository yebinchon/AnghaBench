
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
typedef enum ath_stomp_type { ____Placeholder_ath_stomp_type } ath_stomp_type ;


 int AR_BT_COEX_WGHT ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int AR_STOMP_ALL_WLAN_WGHT ;
 int AR_STOMP_LOW_WLAN_WGHT ;
 int AR_STOMP_NONE_WLAN_WGHT ;



 int BTCOEX ;
 int ath9k_hw_btcoex_set_weight (struct ath_hw*,int ,int ,int) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*) ;

void ath9k_hw_btcoex_bt_stomp(struct ath_hw *ah,
         enum ath_stomp_type stomp_type)
{
 if (AR_SREV_9300_20_OR_LATER(ah)) {
  ath9k_hw_btcoex_set_weight(ah, 0, 0, stomp_type);
  return;
 }

 switch (stomp_type) {
 case 130:
  ath9k_hw_btcoex_set_weight(ah, AR_BT_COEX_WGHT,
        AR_STOMP_ALL_WLAN_WGHT, 0);
  break;
 case 129:
  ath9k_hw_btcoex_set_weight(ah, AR_BT_COEX_WGHT,
        AR_STOMP_LOW_WLAN_WGHT, 0);
  break;
 case 128:
  ath9k_hw_btcoex_set_weight(ah, AR_BT_COEX_WGHT,
        AR_STOMP_NONE_WLAN_WGHT, 0);
  break;
 default:
  ath_dbg(ath9k_hw_common(ah), BTCOEX, "Invalid Stomptype\n");
  break;
 }
}
