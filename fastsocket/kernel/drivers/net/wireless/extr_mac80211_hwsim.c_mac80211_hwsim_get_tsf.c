
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mac80211_hwsim_data {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;


 int __mac80211_hwsim_get_tsf (struct mac80211_hwsim_data*) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static u64 mac80211_hwsim_get_tsf(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif)
{
 struct mac80211_hwsim_data *data = hw->priv;
 return le64_to_cpu(__mac80211_hwsim_get_tsf(data));
}
