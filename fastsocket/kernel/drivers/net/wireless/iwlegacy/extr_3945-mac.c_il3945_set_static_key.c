
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;
struct ieee80211_key_conf {scalar_t__ cipher; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IL_ERR (char*,scalar_t__) ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;

__attribute__((used)) static int
il3945_set_static_key(struct il_priv *il, struct ieee80211_key_conf *key)
{
 if (key->cipher == WLAN_CIPHER_SUITE_WEP40 ||
     key->cipher == WLAN_CIPHER_SUITE_WEP104)
  return -EOPNOTSUPP;

 IL_ERR("Static key invalid: cipher %x\n", key->cipher);
 return -EINVAL;
}
