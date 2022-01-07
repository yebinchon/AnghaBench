
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int (* read ) (struct e1000_hw*,int,int,int*) ;int (* write ) (struct e1000_hw*,int,int,int*) ;int (* update ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {int word_size; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {int vendor_id; int device_id; TYPE_3__ nvm; TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;
struct ethtool_eeprom {int magic; int offset; int len; } ;


 int EFAULT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int cpu_to_le16 (int) ;
 scalar_t__ e1000_i211 ;
 int igb_set_fw_version (struct igb_adapter*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int le16_to_cpus (int*) ;
 int memcpy (void*,int *,int ) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct e1000_hw*,int,int,int*) ;
 int stub2 (struct e1000_hw*,int,int,int*) ;
 int stub3 (struct e1000_hw*,int,int,int*) ;
 int stub4 (struct e1000_hw*) ;

__attribute__((used)) static int igb_set_eeprom(struct net_device *netdev,
     struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u16 *eeprom_buff;
 void *ptr;
 int max_len, first_word, last_word, ret_val = 0;
 u16 i;

 if (eeprom->len == 0)
  return -EOPNOTSUPP;

 if (hw->mac.type == e1000_i211)
  return -EOPNOTSUPP;

 if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
  return -EFAULT;

 max_len = hw->nvm.word_size * 2;

 first_word = eeprom->offset >> 1;
 last_word = (eeprom->offset + eeprom->len - 1) >> 1;
 eeprom_buff = kmalloc(max_len, GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;

 ptr = (void *)eeprom_buff;

 if (eeprom->offset & 1) {



  ret_val = hw->nvm.ops.read(hw, first_word, 1,
         &eeprom_buff[0]);
  ptr++;
 }
 if (((eeprom->offset + eeprom->len) & 1) && (ret_val == 0)) {



  ret_val = hw->nvm.ops.read(hw, last_word, 1,
       &eeprom_buff[last_word - first_word]);
 }


 for (i = 0; i < last_word - first_word + 1; i++)
  le16_to_cpus(&eeprom_buff[i]);

 memcpy(ptr, bytes, eeprom->len);

 for (i = 0; i < last_word - first_word + 1; i++)
  eeprom_buff[i] = cpu_to_le16(eeprom_buff[i]);

 ret_val = hw->nvm.ops.write(hw, first_word,
        last_word - first_word + 1, eeprom_buff);


 if (ret_val == 0)
  hw->nvm.ops.update(hw);

 igb_set_fw_version(adapter);
 kfree(eeprom_buff);
 return ret_val;
}
