
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zd_mac {int chip; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int zd_chip_get_tsf (int *) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;

__attribute__((used)) static u64 zd_op_get_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct zd_mac *mac = zd_hw_mac(hw);
 return zd_chip_get_tsf(&mac->chip);
}
