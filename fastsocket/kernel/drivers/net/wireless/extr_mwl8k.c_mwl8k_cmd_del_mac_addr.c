
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int mwl8k_cmd_update_mac_addr (struct ieee80211_hw*,struct ieee80211_vif*,int *,int) ;

__attribute__((used)) static inline int mwl8k_cmd_del_mac_addr(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif, u8 *mac)
{
 return mwl8k_cmd_update_mac_addr(hw, vif, mac, 0);
}
