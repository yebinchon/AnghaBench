
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {void (* reg_notifier ) (struct wiphy*,struct regulatory_request*) ;int flags; } ;
struct ieee80211_regdomain {int dummy; } ;
struct ath_regulatory {int dummy; } ;


 int NL80211_REGDOM_SET_BY_DRIVER ;
 int WIPHY_FLAG_CUSTOM_REGULATORY ;
 int WIPHY_FLAG_STRICT_REGULATORY ;
 struct ieee80211_regdomain* ath_default_world_regdomain () ;
 scalar_t__ ath_is_world_regd (struct ath_regulatory*) ;
 int ath_reg_apply_radar_flags (struct wiphy*) ;
 int ath_reg_apply_world_flags (struct wiphy*,int ,struct ath_regulatory*) ;
 struct ieee80211_regdomain* ath_world_regdomain (struct ath_regulatory*) ;
 int wiphy_apply_custom_regulatory (struct wiphy*,struct ieee80211_regdomain const*) ;

__attribute__((used)) static int
ath_regd_init_wiphy(struct ath_regulatory *reg,
      struct wiphy *wiphy,
      void (*reg_notifier)(struct wiphy *wiphy,
      struct regulatory_request *request))
{
 const struct ieee80211_regdomain *regd;

 wiphy->reg_notifier = reg_notifier;
 wiphy->flags |= WIPHY_FLAG_STRICT_REGULATORY;

 if (ath_is_world_regd(reg)) {




  regd = ath_world_regdomain(reg);
  wiphy->flags |= WIPHY_FLAG_CUSTOM_REGULATORY;
 } else {





  regd = ath_default_world_regdomain();
 }
 wiphy_apply_custom_regulatory(wiphy, regd);
 ath_reg_apply_radar_flags(wiphy);
 ath_reg_apply_world_flags(wiphy, NL80211_REGDOM_SET_BY_DRIVER, reg);
 return 0;
}
