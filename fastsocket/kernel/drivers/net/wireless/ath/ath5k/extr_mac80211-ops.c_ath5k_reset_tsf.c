
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {scalar_t__ opmode; } ;


 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int ath5k_beacon_update_timers (struct ath5k_hw*,int ) ;
 int ath5k_hw_reset_tsf (struct ath5k_hw*) ;

__attribute__((used)) static void
ath5k_reset_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct ath5k_hw *ah = hw->priv;





 if (ah->opmode == NL80211_IFTYPE_ADHOC)
  ath5k_beacon_update_timers(ah, 0);
 else
  ath5k_hw_reset_tsf(ah);
}
