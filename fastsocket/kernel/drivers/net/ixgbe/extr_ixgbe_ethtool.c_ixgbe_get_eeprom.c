
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* read_buffer ) (struct ixgbe_hw*,int,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {int vendor_id; int device_id; TYPE_2__ eeprom; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
struct ethtool_eeprom {int magic; int offset; int len; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int le16_to_cpus (int*) ;
 int memcpy (int *,int *,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int,int,int*) ;

__attribute__((used)) static int ixgbe_get_eeprom(struct net_device *netdev,
                            struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 u16 *eeprom_buff;
 int first_word, last_word, eeprom_len;
 int ret_val = 0;
 u16 i;

 if (eeprom->len == 0)
  return -EINVAL;

 eeprom->magic = hw->vendor_id | (hw->device_id << 16);

 first_word = eeprom->offset >> 1;
 last_word = (eeprom->offset + eeprom->len - 1) >> 1;
 eeprom_len = last_word - first_word + 1;

 eeprom_buff = kmalloc(sizeof(u16) * eeprom_len, GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;

 ret_val = hw->eeprom.ops.read_buffer(hw, first_word, eeprom_len,
          eeprom_buff);


 for (i = 0; i < eeprom_len; i++)
  le16_to_cpus(&eeprom_buff[i]);

 memcpy(bytes, (u8 *)eeprom_buff + (eeprom->offset & 1), eeprom->len);
 kfree(eeprom_buff);

 return ret_val;
}
