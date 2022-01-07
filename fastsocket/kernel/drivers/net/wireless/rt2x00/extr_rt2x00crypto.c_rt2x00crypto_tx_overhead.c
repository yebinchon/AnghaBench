
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rt2x00_dev {int cap_flags; } ;
struct TYPE_2__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_key_conf {int flags; scalar_t__ cipher; scalar_t__ iv_len; scalar_t__ icv_len; } ;


 int CAPABILITY_HW_CRYPTO ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int test_bit (int ,int *) ;

unsigned int rt2x00crypto_tx_overhead(struct rt2x00_dev *rt2x00dev,
          struct sk_buff *skb)
{
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 struct ieee80211_key_conf *key = tx_info->control.hw_key;
 unsigned int overhead = 0;

 if (!test_bit(CAPABILITY_HW_CRYPTO, &rt2x00dev->cap_flags) || !key)
  return overhead;






 overhead += key->icv_len;

 if (!(key->flags & IEEE80211_KEY_FLAG_GENERATE_IV))
  overhead += key->iv_len;

 if (!(key->flags & IEEE80211_KEY_FLAG_GENERATE_MMIC)) {
  if (key->cipher == WLAN_CIPHER_SUITE_TKIP)
   overhead += 8;
 }

 return overhead;
}
