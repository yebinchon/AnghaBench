
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {int dummy; } ;


 int ath5k_hw_set_tsf64 (struct ath5k_hw*,int ) ;

__attribute__((used)) static void
ath5k_set_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif, u64 tsf)
{
 struct ath5k_hw *ah = hw->priv;

 ath5k_hw_set_tsf64(ah, tsf);
}
