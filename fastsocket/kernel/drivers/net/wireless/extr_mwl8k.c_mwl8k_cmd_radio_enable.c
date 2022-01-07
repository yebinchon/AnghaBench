
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int mwl8k_cmd_radio_control (struct ieee80211_hw*,int,int ) ;

__attribute__((used)) static int mwl8k_cmd_radio_enable(struct ieee80211_hw *hw)
{
 return mwl8k_cmd_radio_control(hw, 1, 0);
}
