
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {scalar_t__ assoc; } ;


 int AR5K_LED_ASSOC ;
 int AR5K_LED_INIT ;
 int ath5k_hw_set_ledstate (struct ath5k_hw*,int ) ;

__attribute__((used)) static void
ath5k_sw_scan_complete(struct ieee80211_hw *hw)
{
 struct ath5k_hw *ah = hw->priv;
 ath5k_hw_set_ledstate(ah, ah->assoc ?
  AR5K_LED_ASSOC : AR5K_LED_INIT);
}
