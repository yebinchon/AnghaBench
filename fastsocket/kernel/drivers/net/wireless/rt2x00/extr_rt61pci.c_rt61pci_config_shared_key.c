
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00lib_crypto {scalar_t__ cmd; int bssidx; int cipher; int rx_mic; int tx_mic; int key; } ;
struct rt2x00_field32 {int bit_offset; int bit_mask; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_key_conf {int hw_key_idx; int flags; } ;
struct hw_key_entry {int rx_mic; int tx_mic; int key; } ;
typedef int key_entry ;


 scalar_t__ DISABLE_KEY ;
 int ENOSPC ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int SEC_CSR0 ;
 int SEC_CSR1 ;
 int SEC_CSR5 ;
 scalar_t__ SET_KEY ;
 int SHARED_KEY_ENTRY (int) ;
 int ffz (int) ;
 int memcpy (int ,int ,int) ;
 int rt2x00_set_field32 (int*,struct rt2x00_field32,int ) ;
 int rt2x00mmio_register_multiwrite (struct rt2x00_dev*,int,struct hw_key_entry*,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;

__attribute__((used)) static int rt61pci_config_shared_key(struct rt2x00_dev *rt2x00dev,
         struct rt2x00lib_crypto *crypto,
         struct ieee80211_key_conf *key)
{
 struct hw_key_entry key_entry;
 struct rt2x00_field32 field;
 u32 mask;
 u32 reg;

 if (crypto->cmd == SET_KEY) {
  mask = (0xf << crypto->bssidx);

  rt2x00mmio_register_read(rt2x00dev, SEC_CSR0, &reg);
  reg &= mask;

  if (reg && reg == mask)
   return -ENOSPC;

  key->hw_key_idx += reg ? ffz(reg) : 0;




  memcpy(key_entry.key, crypto->key,
         sizeof(key_entry.key));
  memcpy(key_entry.tx_mic, crypto->tx_mic,
         sizeof(key_entry.tx_mic));
  memcpy(key_entry.rx_mic, crypto->rx_mic,
         sizeof(key_entry.rx_mic));

  reg = SHARED_KEY_ENTRY(key->hw_key_idx);
  rt2x00mmio_register_multiwrite(rt2x00dev, reg,
            &key_entry, sizeof(key_entry));
  if (key->hw_key_idx < 8) {
   field.bit_offset = (3 * key->hw_key_idx);
   field.bit_mask = 0x7 << field.bit_offset;

   rt2x00mmio_register_read(rt2x00dev, SEC_CSR1, &reg);
   rt2x00_set_field32(&reg, field, crypto->cipher);
   rt2x00mmio_register_write(rt2x00dev, SEC_CSR1, reg);
  } else {
   field.bit_offset = (3 * (key->hw_key_idx - 8));
   field.bit_mask = 0x7 << field.bit_offset;

   rt2x00mmio_register_read(rt2x00dev, SEC_CSR5, &reg);
   rt2x00_set_field32(&reg, field, crypto->cipher);
   rt2x00mmio_register_write(rt2x00dev, SEC_CSR5, reg);
  }
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
 }







 mask = 1 << key->hw_key_idx;

 rt2x00mmio_register_read(rt2x00dev, SEC_CSR0, &reg);
 if (crypto->cmd == SET_KEY)
  reg |= mask;
 else if (crypto->cmd == DISABLE_KEY)
  reg &= ~mask;
 rt2x00mmio_register_write(rt2x00dev, SEC_CSR0, reg);

 return 0;
}
