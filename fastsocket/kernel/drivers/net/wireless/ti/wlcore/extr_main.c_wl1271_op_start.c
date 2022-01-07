
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int DEBUG_MAC80211 ;
 int wl1271_debug (int ,char*) ;

__attribute__((used)) static int wl1271_op_start(struct ieee80211_hw *hw)
{
 wl1271_debug(DEBUG_MAC80211, "mac80211 start");
 return 0;
}
