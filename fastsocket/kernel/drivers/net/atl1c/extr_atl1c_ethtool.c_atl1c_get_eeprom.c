
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int offset; int len; } ;
struct atl1c_hw {int dummy; } ;
struct atl1c_adapter {TYPE_1__* pdev; struct atl1c_hw hw; } ;
struct TYPE_2__ {int vendor; int device; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atl1c_check_eeprom_exist (struct atl1c_hw*) ;
 int atl1c_read_eeprom (struct atl1c_hw*,int,int *) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int ) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl1c_get_eeprom(struct net_device *netdev,
  struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 struct atl1c_hw *hw = &adapter->hw;
 u32 *eeprom_buff;
 int first_dword, last_dword;
 int ret_val = 0;
 int i;

 if (eeprom->len == 0)
  return -EINVAL;

 if (!atl1c_check_eeprom_exist(hw))
  return -EINVAL;

 eeprom->magic = adapter->pdev->vendor |
   (adapter->pdev->device << 16);

 first_dword = eeprom->offset >> 2;
 last_dword = (eeprom->offset + eeprom->len - 1) >> 2;

 eeprom_buff = kmalloc(sizeof(u32) *
   (last_dword - first_dword + 1), GFP_KERNEL);
 if (eeprom_buff == ((void*)0))
  return -ENOMEM;

 for (i = first_dword; i < last_dword; i++) {
  if (!atl1c_read_eeprom(hw, i * 4, &(eeprom_buff[i-first_dword]))) {
   kfree(eeprom_buff);
   return -EIO;
  }
 }

 memcpy(bytes, (u8 *)eeprom_buff + (eeprom->offset & 3),
   eeprom->len);
 kfree(eeprom_buff);

 return ret_val;
 return 0;
}
