
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
struct carl9170_sta_info {int sleeping; int pending_frames; } ;
typedef enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;




 int atomic_read (int *) ;
 int ieee80211_sta_block_awake (struct ieee80211_hw*,struct ieee80211_sta*,int) ;

__attribute__((used)) static void carl9170_op_sta_notify(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       enum sta_notify_cmd cmd,
       struct ieee80211_sta *sta)
{
 struct carl9170_sta_info *sta_info = (void *) sta->drv_priv;

 switch (cmd) {
 case 128:
  sta_info->sleeping = 1;
  if (atomic_read(&sta_info->pending_frames))
   ieee80211_sta_block_awake(hw, sta, 1);
  break;

 case 129:
  sta_info->sleeping = 0;
  break;
 }
}
