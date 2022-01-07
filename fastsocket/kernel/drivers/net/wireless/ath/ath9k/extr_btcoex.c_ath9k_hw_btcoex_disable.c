
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_btcoex_hw {int enabled; int* wlan_weight; scalar_t__ scheme; int wlanactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;


 int AR9300_NUM_BT_WEIGHTS ;
 int AR_BT_COEX_BT_WEIGHTS (int) ;
 int AR_BT_COEX_MODE ;
 int AR_BT_COEX_MODE2 ;
 int AR_BT_COEX_WEIGHT ;
 int AR_BT_COEX_WL_WEIGHTS0 ;
 int AR_BT_COEX_WL_WEIGHTS1 ;
 int AR_BT_MODE ;
 int AR_BT_QUIET ;
 int AR_GPIO_OUTPUT_MUX_AS_OUTPUT ;
 int AR_MCI_COEX_WL_WEIGHTS (int) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 scalar_t__ ATH_BTCOEX_CFG_3WIRE ;
 int ATH_BTCOEX_STOMP_NONE ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_btcoex_bt_stomp (struct ath_hw*,int ) ;
 int ath9k_hw_cfg_output (struct ath_hw*,int ,int ) ;
 int ath9k_hw_set_gpio (struct ath_hw*,int ,int ) ;

void ath9k_hw_btcoex_disable(struct ath_hw *ah)
{
 struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;
 int i;

 btcoex_hw->enabled = 0;
 if (AR_SREV_9462(ah) || AR_SREV_9565(ah)) {
  ath9k_hw_btcoex_bt_stomp(ah, ATH_BTCOEX_STOMP_NONE);
  for (i = 0; i < AR9300_NUM_BT_WEIGHTS; i++)
   REG_WRITE(ah, AR_MCI_COEX_WL_WEIGHTS(i),
      btcoex_hw->wlan_weight[i]);
  return;
 }
 ath9k_hw_set_gpio(ah, btcoex_hw->wlanactive_gpio, 0);

 ath9k_hw_cfg_output(ah, btcoex_hw->wlanactive_gpio,
   AR_GPIO_OUTPUT_MUX_AS_OUTPUT);

 if (btcoex_hw->scheme == ATH_BTCOEX_CFG_3WIRE) {
  REG_WRITE(ah, AR_BT_COEX_MODE, AR_BT_QUIET | AR_BT_MODE);
  REG_WRITE(ah, AR_BT_COEX_MODE2, 0);

  if (AR_SREV_9300_20_OR_LATER(ah)) {
   REG_WRITE(ah, AR_BT_COEX_WL_WEIGHTS0, 0);
   REG_WRITE(ah, AR_BT_COEX_WL_WEIGHTS1, 0);
   for (i = 0; i < AR9300_NUM_BT_WEIGHTS; i++)
    REG_WRITE(ah, AR_BT_COEX_BT_WEIGHTS(i), 0);
  } else
   REG_WRITE(ah, AR_BT_COEX_WEIGHT, 0);

 }
}
