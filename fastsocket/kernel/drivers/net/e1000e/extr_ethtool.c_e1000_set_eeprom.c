
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
struct ethtool_eeprom {int magic; int offset; int len; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_5__ {int word_size; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ nvm; } ;
struct e1000_adapter {int flags; TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_4__ {int vendor; int device; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int FLAG_READ_ONLY_NVM ;
 int GFP_KERNEL ;
 int NVM_CHECKSUM_REG ;
 int cpu_to_le16s (int*) ;
 scalar_t__ e1000_82573 ;
 scalar_t__ e1000_82574 ;
 scalar_t__ e1000_82583 ;
 int e1000_read_nvm (struct e1000_hw*,int,int,int*) ;
 int e1000_write_nvm (struct e1000_hw*,int,int,int*) ;
 int e1000e_update_nvm_checksum (struct e1000_hw*) ;
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
 int max_len;
 int first_word;
 int last_word;
 int ret_val = 0;
 u16 i;

 if (eeprom->len == 0)
  return -EOPNOTSUPP;

 if (eeprom->magic !=
     (adapter->pdev->vendor | (adapter->pdev->device << 16)))
  return -EFAULT;

 if (adapter->flags & FLAG_READ_ONLY_NVM)
  return -EINVAL;

 max_len = hw->nvm.word_size * 2;

 first_word = eeprom->offset >> 1;
 last_word = (eeprom->offset + eeprom->len - 1) >> 1;
 eeprom_buff = kmalloc(max_len, GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;

 ptr = (void *)eeprom_buff;

 if (eeprom->offset & 1) {


  ret_val = e1000_read_nvm(hw, first_word, 1, &eeprom_buff[0]);
  ptr++;
 }
 if (((eeprom->offset + eeprom->len) & 1) && (!ret_val))


  ret_val = e1000_read_nvm(hw, last_word, 1,
      &eeprom_buff[last_word - first_word]);

 if (ret_val)
  goto out;


 for (i = 0; i < last_word - first_word + 1; i++)
  le16_to_cpus(&eeprom_buff[i]);

 memcpy(ptr, bytes, eeprom->len);

 for (i = 0; i < last_word - first_word + 1; i++)
  cpu_to_le16s(&eeprom_buff[i]);

 ret_val = e1000_write_nvm(hw, first_word,
      last_word - first_word + 1, eeprom_buff);

 if (ret_val)
  goto out;




 if ((first_word <= NVM_CHECKSUM_REG) ||
     (hw->mac.type == e1000_82583) ||
     (hw->mac.type == e1000_82574) ||
     (hw->mac.type == e1000_82573))
  ret_val = e1000e_update_nvm_checksum(hw);

out:
 kfree(eeprom_buff);
 return ret_val;
}
