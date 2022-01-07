
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valid; int replay_ctr; int kck; int kek; } ;
struct iwl_mvm_vif {TYPE_1__ rekey_data; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_gtk_rekey_data {int replay_ctr; int kck; int kek; } ;
typedef int __be64 ;
struct TYPE_4__ {scalar_t__ sw_crypto; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int NL80211_KCK_LEN ;
 int NL80211_KEK_LEN ;
 int be64_to_cpup (int *) ;
 int cpu_to_le64 (int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 TYPE_2__ iwlwifi_mod_params ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void iwl_mvm_set_rekey_data(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct cfg80211_gtk_rekey_data *data)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (iwlwifi_mod_params.sw_crypto)
  return;

 mutex_lock(&mvm->mutex);

 memcpy(mvmvif->rekey_data.kek, data->kek, NL80211_KEK_LEN);
 memcpy(mvmvif->rekey_data.kck, data->kck, NL80211_KCK_LEN);
 mvmvif->rekey_data.replay_ctr =
  cpu_to_le64(be64_to_cpup((__be64 *)&data->replay_ctr));
 mvmvif->rekey_data.valid = 1;

 mutex_unlock(&mvm->mutex);
}
