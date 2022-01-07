
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int wiphy; struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int dummy; } ;


 int ath_is_rfkill_set (struct ath9k_htc_priv*) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

void ath9k_htc_rfkill_poll_state(struct ieee80211_hw *hw)
{
 struct ath9k_htc_priv *priv = hw->priv;
 bool blocked = !!ath_is_rfkill_set(priv);

 wiphy_rfkill_set_hw_state(hw->wiphy, blocked);
}
