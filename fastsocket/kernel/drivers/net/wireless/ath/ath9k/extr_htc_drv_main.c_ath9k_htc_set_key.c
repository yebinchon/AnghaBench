
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {scalar_t__ cipher; int flags; int hw_key_idx; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_priv {int mutex; TYPE_1__* ah; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;
struct TYPE_2__ {int sw_mgmt_crypto; } ;


 int CONFIG ;

 int EINVAL ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int IEEE80211_KEY_FLAG_SW_MGMT_TX ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;

 scalar_t__ WLAN_CIPHER_SUITE_CCMP ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int ath_key_config (struct ath_common*,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ;
 int ath_key_delete (struct ath_common*,struct ieee80211_key_conf*) ;
 scalar_t__ htc_modparam_nohwcrypt ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath9k_htc_set_key(struct ieee80211_hw *hw,
        enum set_key_cmd cmd,
        struct ieee80211_vif *vif,
        struct ieee80211_sta *sta,
        struct ieee80211_key_conf *key)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath_common *common = ath9k_hw_common(priv->ah);
 int ret = 0;

 if (htc_modparam_nohwcrypt)
  return -ENOSPC;

 if ((vif->type == NL80211_IFTYPE_ADHOC ||
      vif->type == NL80211_IFTYPE_MESH_POINT) &&
     (key->cipher == WLAN_CIPHER_SUITE_TKIP ||
      key->cipher == WLAN_CIPHER_SUITE_CCMP) &&
     !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE)) {







  return -EOPNOTSUPP;
 }

 mutex_lock(&priv->mutex);
 ath_dbg(common, CONFIG, "Set HW Key\n");
 ath9k_htc_ps_wakeup(priv);

 switch (cmd) {
 case 128:
  ret = ath_key_config(common, vif, sta, key);
  if (ret >= 0) {
   key->hw_key_idx = ret;

   key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
   if (key->cipher == WLAN_CIPHER_SUITE_TKIP)
    key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIC;
   if (priv->ah->sw_mgmt_crypto &&
       key->cipher == WLAN_CIPHER_SUITE_CCMP)
    key->flags |= IEEE80211_KEY_FLAG_SW_MGMT_TX;
   ret = 0;
  }
  break;
 case 129:
  ath_key_delete(common, key);
  break;
 default:
  ret = -EINVAL;
 }

 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);

 return ret;
}
