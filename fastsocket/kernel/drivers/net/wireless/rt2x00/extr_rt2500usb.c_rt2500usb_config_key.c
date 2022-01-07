
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct rt2x00lib_crypto {scalar_t__ cmd; int cipher; int key; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_key_conf {scalar_t__ cipher; scalar_t__ keyidx; int hw_key_idx; int flags; } ;
typedef enum cipher { ____Placeholder_cipher } cipher ;
struct TYPE_6__ {int bit_mask; } ;


 scalar_t__ DISABLE_KEY ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int IEEE80211_HEADER ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int KEY_ENTRY (int) ;
 scalar_t__ SET_KEY ;
 int TXRX_CSR0 ;
 TYPE_1__ TXRX_CSR0_ALGORITHM ;
 TYPE_1__ TXRX_CSR0_IV_OFFSET ;
 TYPE_1__ TXRX_CSR0_KEY_ID ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 int ffz (int) ;
 int rt2500usb_register_multiwrite (struct rt2x00_dev*,int ,int ,int) ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2500usb_register_write (struct rt2x00_dev*,int ,int) ;
 int rt2x00_get_field16 (int,TYPE_1__) ;
 int rt2x00_set_field16 (int*,TYPE_1__,int) ;

__attribute__((used)) static int rt2500usb_config_key(struct rt2x00_dev *rt2x00dev,
    struct rt2x00lib_crypto *crypto,
    struct ieee80211_key_conf *key)
{
 u32 mask;
 u16 reg;
 enum cipher curr_cipher;

 if (crypto->cmd == SET_KEY) {





  if ((key->cipher == WLAN_CIPHER_SUITE_WEP40 ||
       key->cipher == WLAN_CIPHER_SUITE_WEP104) &&
      key->keyidx != 0)
   return -EOPNOTSUPP;






  mask = TXRX_CSR0_KEY_ID.bit_mask;

  rt2500usb_register_read(rt2x00dev, TXRX_CSR0, &reg);
  curr_cipher = rt2x00_get_field16(reg, TXRX_CSR0_ALGORITHM);
  reg &= mask;

  if (reg && reg == mask)
   return -ENOSPC;

  reg = rt2x00_get_field16(reg, TXRX_CSR0_KEY_ID);

  key->hw_key_idx += reg ? ffz(reg) : 0;






  if (key->hw_key_idx > 0 && crypto->cipher != curr_cipher)
   return -EOPNOTSUPP;

  rt2500usb_register_multiwrite(rt2x00dev, KEY_ENTRY(key->hw_key_idx),
           crypto->key, sizeof(crypto->key));
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIC;
 }





 rt2500usb_register_read(rt2x00dev, TXRX_CSR0, &reg);
 rt2x00_set_field16(&reg, TXRX_CSR0_ALGORITHM, crypto->cipher);
 rt2x00_set_field16(&reg, TXRX_CSR0_IV_OFFSET, IEEE80211_HEADER);

 mask = rt2x00_get_field16(reg, TXRX_CSR0_KEY_ID);
 if (crypto->cmd == SET_KEY)
  mask |= 1 << key->hw_key_idx;
 else if (crypto->cmd == DISABLE_KEY)
  mask &= ~(1 << key->hw_key_idx);
 rt2x00_set_field16(&reg, TXRX_CSR0_KEY_ID, mask);
 rt2500usb_register_write(rt2x00dev, TXRX_CSR0, reg);

 return 0;
}
