
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm_vif {size_t ap_sta_id; } ;
struct iwl_mvm_sta {int bt_reduced_txpower; } ;
struct iwl_mvm {int mutex; int * fw_id_to_mac_id; } ;
struct iwl_bt_iterator_data {int reduced_tx_power; struct iwl_mvm* mvm; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;


 size_t IWL_MVM_STATION_COUNT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int lockdep_is_held (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static void iwl_mvm_bt_rssi_iterator(void *_data, u8 *mac,
       struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = (void *)vif->drv_priv;
 struct iwl_bt_iterator_data *data = _data;
 struct iwl_mvm *mvm = data->mvm;

 struct ieee80211_sta *sta;
 struct iwl_mvm_sta *mvmsta;

 if (vif->type != NL80211_IFTYPE_STATION ||
     mvmvif->ap_sta_id == IWL_MVM_STATION_COUNT)
  return;

 sta = rcu_dereference_protected(mvm->fw_id_to_mac_id[mvmvif->ap_sta_id],
     lockdep_is_held(&mvm->mutex));
 mvmsta = (void *)sta->drv_priv;





 if (!mvmsta->bt_reduced_txpower)
  data->reduced_tx_power = 0;

}
