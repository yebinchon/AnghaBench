
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct regulatory_request {int dummy; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath_regulatory {int dummy; } ;
struct ath5k_hw {int dummy; } ;


 struct ath_regulatory* ath5k_hw_regulatory (struct ath5k_hw*) ;
 int ath_reg_notifier_apply (struct wiphy*,struct regulatory_request*,struct ath_regulatory*) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;

__attribute__((used)) static void ath5k_reg_notifier(struct wiphy *wiphy,
          struct regulatory_request *request)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct ath5k_hw *ah = hw->priv;
 struct ath_regulatory *regulatory = ath5k_hw_regulatory(ah);

 ath_reg_notifier_apply(wiphy, request, regulatory);
}
