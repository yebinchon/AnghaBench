
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;
struct mac_iveiv_entry {int * iv; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
typedef int iveiv_entry ;


 int MAC_IVEIV_ENTRY (int ) ;
 int memcpy (int *,int *,int) ;
 int rt2800_register_multiread (struct rt2x00_dev*,int ,struct mac_iveiv_entry*,int) ;

void rt2800_get_tkip_seq(struct ieee80211_hw *hw, u8 hw_key_idx, u32 *iv32,
    u16 *iv16)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct mac_iveiv_entry iveiv_entry;
 u32 offset;

 offset = MAC_IVEIV_ENTRY(hw_key_idx);
 rt2800_register_multiread(rt2x00dev, offset,
          &iveiv_entry, sizeof(iveiv_entry));

 memcpy(iv16, &iveiv_entry.iv[0], sizeof(*iv16));
 memcpy(iv32, &iveiv_entry.iv[4], sizeof(*iv32));
}
