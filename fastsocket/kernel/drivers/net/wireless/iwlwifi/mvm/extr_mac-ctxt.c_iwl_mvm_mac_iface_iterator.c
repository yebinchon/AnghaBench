
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct iwl_mvm_vif {scalar_t__ id; scalar_t__ tsf_id; } ;
struct iwl_mvm_mac_iface_iterator_data {int found_vif; scalar_t__ preferred_tsf; int available_tsf_ids; struct ieee80211_vif* vif; int available_mac_ids; int used_hw_queues; } ;
struct ieee80211_vif {scalar_t__* hw_queue; scalar_t__ cab_queue; int type; } ;


 scalar_t__ IEEE80211_INVAL_HW_QUEUE ;
 size_t IEEE80211_NUM_ACS ;


 scalar_t__ NUM_TSF_IDS ;
 int __clear_bit (scalar_t__,int ) ;
 int __set_bit (scalar_t__,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static void iwl_mvm_mac_iface_iterator(void *_data, u8 *mac,
           struct ieee80211_vif *vif)
{
 struct iwl_mvm_mac_iface_iterator_data *data = _data;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 u32 ac;


 if (vif == data->vif) {
  data->found_vif = 1;
  return;
 }


 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
  if (vif->hw_queue[ac] != IEEE80211_INVAL_HW_QUEUE)
   __set_bit(vif->hw_queue[ac], data->used_hw_queues);

 if (vif->cab_queue != IEEE80211_INVAL_HW_QUEUE)
  __set_bit(vif->cab_queue, data->used_hw_queues);
 __clear_bit(mvmvif->id, data->available_mac_ids);
 switch (data->vif->type) {
 case 128:







  if (vif->type == 129) {
   if (data->preferred_tsf == NUM_TSF_IDS &&
       test_bit(mvmvif->tsf_id, data->available_tsf_ids))
    data->preferred_tsf = mvmvif->tsf_id;
   return;
  }
  break;
 case 129:
  if (vif->type == 128 ||
      vif->type == 129) {
   if (data->preferred_tsf == NUM_TSF_IDS &&
       test_bit(mvmvif->tsf_id, data->available_tsf_ids))
    data->preferred_tsf = mvmvif->tsf_id;
   return;
  }
  break;
 default:







  break;
 }







 __clear_bit(mvmvif->tsf_id, data->available_tsf_ids);

 if (data->preferred_tsf == mvmvif->tsf_id)
  data->preferred_tsf = NUM_TSF_IDS;
}
