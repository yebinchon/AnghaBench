
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int cipher; void* hw_key_idx; int flags; } ;
struct ieee80211_hw {int flags; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;
struct TYPE_2__ {scalar_t__ sw_crypto; } ;



 int EINVAL ;
 int EOPNOTSUPP ;
 int IEEE80211_HW_MFP_CAPABLE ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_WARN (struct iwl_mvm*,char*) ;
 int NL80211_IFTYPE_AP ;

 void* STA_KEY_IDX_INVALID ;
 int WARN_ON_ONCE (int) ;





 int iwl_mvm_remove_sta_key (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ;
 int iwl_mvm_set_sta_key (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*,int) ;
 TYPE_1__ iwlwifi_mod_params ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_mac_set_key(struct ieee80211_hw *hw,
          enum set_key_cmd cmd,
          struct ieee80211_vif *vif,
          struct ieee80211_sta *sta,
          struct ieee80211_key_conf *key)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 int ret;

 if (iwlwifi_mod_params.sw_crypto) {
  IWL_DEBUG_MAC80211(mvm, "leave - hwcrypto disabled\n");
  return -EOPNOTSUPP;
 }

 switch (key->cipher) {
 case 130:
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIC;

 case 131:
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
  break;
 case 132:
  WARN_ON_ONCE(!(hw->flags & IEEE80211_HW_MFP_CAPABLE));
  break;
 case 128:
 case 129:





  return 0;
 default:
  return -EOPNOTSUPP;
 }

 mutex_lock(&mvm->mutex);

 switch (cmd) {
 case 133:
  if (vif->type == NL80211_IFTYPE_AP && !sta) {

   ret = 0;
   key->hw_key_idx = STA_KEY_IDX_INVALID;
   break;
  }

  IWL_DEBUG_MAC80211(mvm, "set hwcrypto key\n");
  ret = iwl_mvm_set_sta_key(mvm, vif, sta, key, 0);
  if (ret) {
   IWL_WARN(mvm, "set key failed\n");




   key->hw_key_idx = STA_KEY_IDX_INVALID;
   ret = 0;
  }

  break;
 case 134:
  if (key->hw_key_idx == STA_KEY_IDX_INVALID) {
   ret = 0;
   break;
  }

  IWL_DEBUG_MAC80211(mvm, "disable hwcrypto key\n");
  ret = iwl_mvm_remove_sta_key(mvm, vif, sta, key);
  break;
 default:
  ret = -EINVAL;
 }

 mutex_unlock(&mvm->mutex);
 return ret;
}
