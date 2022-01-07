
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {int * fw_id_to_mac_id; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_key_conf {int dummy; } ;


 int CMD_ASYNC ;
 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 size_t IWL_MVM_STATION_COUNT ;
 scalar_t__ WARN_ON (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 size_t iwl_mvm_get_key_sta_id (struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwl_mvm_send_sta_key (struct iwl_mvm*,struct iwl_mvm_sta*,struct ieee80211_key_conf*,size_t,int ,int *,int ) ;
 struct ieee80211_sta* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void iwl_mvm_update_tkip_key(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif,
        struct ieee80211_key_conf *keyconf,
        struct ieee80211_sta *sta, u32 iv32,
        u16 *phase1key)
{
 struct iwl_mvm_sta *mvm_sta;
 u8 sta_id = iwl_mvm_get_key_sta_id(vif, sta);

 if (WARN_ON_ONCE(sta_id == IWL_MVM_STATION_COUNT))
  return;

 rcu_read_lock();

 if (!sta) {
  sta = rcu_dereference(mvm->fw_id_to_mac_id[sta_id]);
  if (WARN_ON(IS_ERR_OR_NULL(sta))) {
   rcu_read_unlock();
   return;
  }
 }

 mvm_sta = (void *)sta->drv_priv;
 iwl_mvm_send_sta_key(mvm, mvm_sta, keyconf, sta_id,
        iv32, phase1key, CMD_ASYNC);
 rcu_read_unlock();
}
