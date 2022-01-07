
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int hwsim_check_sta_magic (struct ieee80211_sta*) ;

__attribute__((used)) static int mac80211_hwsim_set_tim(struct ieee80211_hw *hw,
      struct ieee80211_sta *sta,
      bool set)
{
 hwsim_check_sta_magic(sta);
 return 0;
}
