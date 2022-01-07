
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* wep_keys; } ;
struct il_priv {TYPE_4__ _4965; TYPE_2__* stations; int mutex; } ;
struct ieee80211_key_conf {int keylen; int keyidx; int key; int cipher; int hw_key_idx; int flags; } ;
struct TYPE_7__ {int key_size; int key; } ;
struct TYPE_5__ {int cipher; } ;
struct TYPE_6__ {TYPE_1__ keyinfo; } ;


 int D_WEP (char*,int,...) ;
 int EINVAL ;
 int HW_KEY_DEFAULT ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 size_t IL_AP_ID ;
 int WEP_KEY_LEN_128 ;
 int WEP_KEY_LEN_64 ;
 int il4965_static_wepkey_cmd (struct il_priv*,int) ;
 int lockdep_assert_held (int *) ;
 int memcpy (int *,int *,int) ;

int
il4965_set_default_wep_key(struct il_priv *il,
      struct ieee80211_key_conf *keyconf)
{
 int ret;
 int len = keyconf->keylen;
 int idx = keyconf->keyidx;

 lockdep_assert_held(&il->mutex);

 if (len != WEP_KEY_LEN_128 && len != WEP_KEY_LEN_64) {
  D_WEP("Bad WEP key length %d\n", keyconf->keylen);
  return -EINVAL;
 }

 keyconf->flags &= ~IEEE80211_KEY_FLAG_GENERATE_IV;
 keyconf->hw_key_idx = HW_KEY_DEFAULT;
 il->stations[IL_AP_ID].keyinfo.cipher = keyconf->cipher;

 il->_4965.wep_keys[idx].key_size = len;
 memcpy(&il->_4965.wep_keys[idx].key, &keyconf->key, len);

 ret = il4965_static_wepkey_cmd(il, 0);

 D_WEP("Set default WEP key: len=%d idx=%d ret=%d\n", len, idx, ret);
 return ret;
}
