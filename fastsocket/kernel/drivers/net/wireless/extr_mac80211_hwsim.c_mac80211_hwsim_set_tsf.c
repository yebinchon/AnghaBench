
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct mac80211_hwsim_data {int bcn_delta; int tsf_offset; int beacon_int; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;
typedef scalar_t__ s64 ;


 int do_div (scalar_t__,int ) ;
 scalar_t__ mac80211_hwsim_get_tsf (struct ieee80211_hw*,struct ieee80211_vif*) ;

__attribute__((used)) static void mac80211_hwsim_set_tsf(struct ieee80211_hw *hw,
  struct ieee80211_vif *vif, u64 tsf)
{
 struct mac80211_hwsim_data *data = hw->priv;
 u64 now = mac80211_hwsim_get_tsf(hw, vif);
 u32 bcn_int = data->beacon_int;
 s64 delta = tsf - now;

 data->tsf_offset += delta;

 data->bcn_delta = do_div(delta, bcn_int);
}
