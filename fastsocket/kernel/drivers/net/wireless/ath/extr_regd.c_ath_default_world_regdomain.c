
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {int dummy; } ;


 struct ieee80211_regdomain const ath_world_regdom_64 ;

__attribute__((used)) static const struct ieee80211_regdomain *ath_default_world_regdomain(void)
{

 return &ath_world_regdom_64;
}
