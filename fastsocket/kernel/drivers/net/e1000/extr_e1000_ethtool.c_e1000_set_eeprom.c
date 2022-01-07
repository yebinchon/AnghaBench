
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int offset; int len; } ;
struct TYPE_2__ {int word_size; } ;
struct e1000_hw {int vendor_id; int device_id; TYPE_1__ eeprom; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int EEPROM_CHECKSUM_REG ;
 int EFAULT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int cpu_to_le16 (int) ;
 int e1000_read_eeprom (struct e1000_hw*,int,int,int*) ;
 int e1000_update_eeprom_checksum (struct e1000_hw*) ;
 int e1000_write_eeprom (struct e1000_hw*,int,int,int*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int le16_to_cpus (int*) ;
 int memcpy (void*,int *,int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_set_eeprom(struct net_device *netdev,
       struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u16 *eeprom_buff;
 void *ptr;
 int max_len, first_word, last_word, ret_val = 0;
 u16 i;

 if (eeprom->len == 0)
  return -EOPNOTSUPP;

 if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
  return -EFAULT;

 max_len = hw->eeprom.word_size * 2;

 first_word = eeprom->offset >> 1;
 last_word = (eeprom->offset + eeprom->len - 1) >> 1;
 eeprom_buff = kmalloc(max_len, GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;

 ptr = (void *)eeprom_buff;

 if (eeprom->offset & 1) {


  ret_val = e1000_read_eeprom(hw, first_word, 1,
         &eeprom_buff[0]);
  ptr++;
 }
 if (((eeprom->offset + eeprom->len) & 1) && (ret_val == 0)) {


  ret_val = e1000_read_eeprom(hw, last_word, 1,
                    &eeprom_buff[last_word - first_word]);
 }


 for (i = 0; i < last_word - first_word + 1; i++)
  le16_to_cpus(&eeprom_buff[i]);

 memcpy(ptr, bytes, eeprom->len);

 for (i = 0; i < last_word - first_word + 1; i++)
  eeprom_buff[i] = cpu_to_le16(eeprom_buff[i]);

 ret_val = e1000_write_eeprom(hw, first_word,
         last_word - first_word + 1, eeprom_buff);


 if ((ret_val == 0) && (first_word <= EEPROM_CHECKSUM_REG))
  e1000_update_eeprom_checksum(hw);

 kfree(eeprom_buff);
 return ret_val;
}
