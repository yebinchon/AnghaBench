
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ixgb_hw {int vendor_id; int device_id; } ;
struct ixgb_adapter {struct ixgb_hw hw; } ;
struct ethtool_eeprom {int len; int magic; int offset; } ;
typedef int __le16 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ixgb_get_eeprom_len (struct net_device*) ;
 int ixgb_get_eeprom_word (struct ixgb_hw*,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ixgb_get_eeprom(struct net_device *netdev,
    struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 struct ixgb_hw *hw = &adapter->hw;
 __le16 *eeprom_buff;
 int i, max_len, first_word, last_word;
 int ret_val = 0;

 if (eeprom->len == 0) {
  ret_val = -EINVAL;
  goto geeprom_error;
 }

 eeprom->magic = hw->vendor_id | (hw->device_id << 16);

 max_len = ixgb_get_eeprom_len(netdev);

 if (eeprom->offset > eeprom->offset + eeprom->len) {
  ret_val = -EINVAL;
  goto geeprom_error;
 }

 if ((eeprom->offset + eeprom->len) > max_len)
  eeprom->len = (max_len - eeprom->offset);

 first_word = eeprom->offset >> 1;
 last_word = (eeprom->offset + eeprom->len - 1) >> 1;

 eeprom_buff = kmalloc(sizeof(__le16) *
   (last_word - first_word + 1), GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;


 for (i = 0; i <= (last_word - first_word); i++)
  eeprom_buff[i] = ixgb_get_eeprom_word(hw, (first_word + i));

 memcpy(bytes, (u8 *)eeprom_buff + (eeprom->offset & 1), eeprom->len);
 kfree(eeprom_buff);

geeprom_error:
 return ret_val;
}
