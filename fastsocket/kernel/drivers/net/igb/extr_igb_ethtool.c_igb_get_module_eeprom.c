
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;
struct ethtool_eeprom {int offset; int len; } ;


 scalar_t__ E1000_SUCCESS ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int be16_to_cpus (int*) ;
 scalar_t__ igb_read_phy_reg_i2c (struct e1000_hw*,int,int*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int *,int *,int ) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_get_module_eeprom(struct net_device *netdev,
     struct ethtool_eeprom *ee, u8 *data)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 status = E1000_SUCCESS;
 u16 *dataword;
 u16 first_word, last_word;
 int i = 0;

 if (ee->len == 0)
  return -EINVAL;

 first_word = ee->offset >> 1;
 last_word = (ee->offset + ee->len - 1) >> 1;

 dataword = kmalloc(sizeof(u16) * (last_word - first_word + 1),
      GFP_KERNEL);
 if (!dataword)
  return -ENOMEM;


 for (i = 0; i < last_word - first_word + 1; i++) {
  status = igb_read_phy_reg_i2c(hw, first_word + i, &dataword[i]);
  if (status != E1000_SUCCESS)

   return -EIO;

  be16_to_cpus(&dataword[i]);
 }

 memcpy(data, (u8 *)dataword + (ee->offset & 1), ee->len);
 kfree(dataword);

 return 0;
}
