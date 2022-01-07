
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__* hw_queue; } ;


 size_t BIT (scalar_t__) ;
 scalar_t__ IEEE80211_INVAL_HW_QUEUE ;
 size_t IEEE80211_NUM_ACS ;
 scalar_t__ IWL_MVM_OFFCHANNEL_QUEUE ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;

u32 iwl_mvm_mac_get_queues_mask(struct iwl_mvm *mvm,
    struct ieee80211_vif *vif)
{
 u32 qmask = 0, ac;

 if (vif->type == NL80211_IFTYPE_P2P_DEVICE)
  return BIT(IWL_MVM_OFFCHANNEL_QUEUE);

 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
  if (vif->hw_queue[ac] != IEEE80211_INVAL_HW_QUEUE)
   qmask |= BIT(vif->hw_queue[ac]);

 return qmask;
}
