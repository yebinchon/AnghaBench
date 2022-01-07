
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int hwsim_check_magic (struct ieee80211_vif*) ;
 int hwsim_set_sta_magic (struct ieee80211_sta*) ;

__attribute__((used)) static int mac80211_hwsim_sta_add(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      struct ieee80211_sta *sta)
{
 hwsim_check_magic(vif);
 hwsim_set_sta_magic(sta);

 return 0;
}
