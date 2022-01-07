
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ampdu_density; int ampdu_factor; scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
struct carl9170_sta_info {int ampdu_max_len; int ht_sta; int * agg; int pending_frames; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static int carl9170_op_sta_add(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_sta *sta)
{
 struct carl9170_sta_info *sta_info = (void *) sta->drv_priv;
 unsigned int i;

 atomic_set(&sta_info->pending_frames, 0);

 if (sta->ht_cap.ht_supported) {
  if (sta->ht_cap.ampdu_density > 6) {





   return 0;
  }

  for (i = 0; i < ARRAY_SIZE(sta_info->agg); i++)
   RCU_INIT_POINTER(sta_info->agg[i], ((void*)0));

  sta_info->ampdu_max_len = 1 << (3 + sta->ht_cap.ampdu_factor);
  sta_info->ht_sta = 1;
 }

 return 0;
}
