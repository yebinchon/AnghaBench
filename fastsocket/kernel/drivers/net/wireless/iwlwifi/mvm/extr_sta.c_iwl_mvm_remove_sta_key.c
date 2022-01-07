
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_mvm_sta {int mac_id_n_color; struct ieee80211_vif* vif; } ;
struct TYPE_2__ {int key_offset; int key_flags; } ;
struct iwl_mvm_add_sta_cmd {size_t sta_id; int add_modify; int modify_mask; TYPE_1__ key; int mac_id_n_color; } ;
struct iwl_mvm {int mutex; int * fw_id_to_mac_id; int fw_key_table; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_key_conf {int keyidx; scalar_t__ cipher; int flags; int hw_key_idx; } ;
typedef int cmd ;
typedef int __le16 ;


 int ADD_STA ;

 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int IWL_DEBUG_WEP (struct iwl_mvm*,char*,...) ;
 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 size_t IWL_MVM_STATION_COUNT ;
 int STA_KEY_FLG_KEYID_MSK ;
 int STA_KEY_FLG_KEYID_POS ;
 int STA_KEY_FLG_NO_ENC ;
 int STA_KEY_FLG_WEP_KEY_MAP ;
 int STA_KEY_MULTICAST ;
 int STA_KEY_NOT_VALID ;
 int STA_MODE_MODIFY ;
 int STA_MODIFY_KEY ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ WLAN_CIPHER_SUITE_AES_CMAC ;
 int __test_and_clear_bit (int ,int ) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 size_t iwl_mvm_get_key_sta_id (struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwl_mvm_send_cmd_pdu_status (struct iwl_mvm*,int ,int,struct iwl_mvm_add_sta_cmd*,int*) ;
 int iwl_mvm_send_sta_igtk (struct iwl_mvm*,struct ieee80211_key_conf*,size_t,int) ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

int iwl_mvm_remove_sta_key(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif,
      struct ieee80211_sta *sta,
      struct ieee80211_key_conf *keyconf)
{
 struct iwl_mvm_sta *mvm_sta;
 struct iwl_mvm_add_sta_cmd cmd = {};
 __le16 key_flags;
 int ret, status;
 u8 sta_id;

 lockdep_assert_held(&mvm->mutex);


 sta_id = iwl_mvm_get_key_sta_id(vif, sta);

 IWL_DEBUG_WEP(mvm, "mvm remove dynamic key: idx=%d sta=%d\n",
        keyconf->keyidx, sta_id);

 if (keyconf->cipher == WLAN_CIPHER_SUITE_AES_CMAC)
  return iwl_mvm_send_sta_igtk(mvm, keyconf, sta_id, 1);

 ret = __test_and_clear_bit(keyconf->hw_key_idx, mvm->fw_key_table);
 if (!ret) {
  IWL_ERR(mvm, "offset %d not used in fw key table.\n",
   keyconf->hw_key_idx);
  return -ENOENT;
 }

 if (sta_id == IWL_MVM_STATION_COUNT) {
  IWL_DEBUG_WEP(mvm, "station non-existent, early return.\n");
  return 0;
 }







 if (!sta) {
  sta = rcu_dereference_protected(mvm->fw_id_to_mac_id[sta_id],
      lockdep_is_held(&mvm->mutex));
  if (!sta) {
   IWL_ERR(mvm, "Invalid station id\n");
   return -EINVAL;
  }
 }

 mvm_sta = (struct iwl_mvm_sta *)sta->drv_priv;
 if (WARN_ON_ONCE(mvm_sta->vif != vif))
  return -EINVAL;

 key_flags = cpu_to_le16((keyconf->keyidx << STA_KEY_FLG_KEYID_POS) &
     STA_KEY_FLG_KEYID_MSK);
 key_flags |= cpu_to_le16(STA_KEY_FLG_NO_ENC | STA_KEY_FLG_WEP_KEY_MAP);
 key_flags |= cpu_to_le16(STA_KEY_NOT_VALID);

 if (!(keyconf->flags & IEEE80211_KEY_FLAG_PAIRWISE))
  key_flags |= cpu_to_le16(STA_KEY_MULTICAST);

 cmd.mac_id_n_color = cpu_to_le32(mvm_sta->mac_id_n_color);
 cmd.key.key_flags = key_flags;
 cmd.key.key_offset = keyconf->hw_key_idx;
 cmd.sta_id = sta_id;

 cmd.modify_mask = STA_MODIFY_KEY;
 cmd.add_modify = STA_MODE_MODIFY;

 status = 128;
 ret = iwl_mvm_send_cmd_pdu_status(mvm, ADD_STA, sizeof(cmd),
       &cmd, &status);

 switch (status) {
 case 128:
  IWL_DEBUG_WEP(mvm, "MODIFY_STA: remove sta key passed\n");
  break;
 default:
  ret = -EIO;
  IWL_ERR(mvm, "MODIFY_STA: remove sta key failed\n");
  break;
 }

 return ret;
}
