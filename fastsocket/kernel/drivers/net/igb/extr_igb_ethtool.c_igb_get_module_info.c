
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;
struct igb_adapter {struct e1000_hw hw; } ;
struct ethtool_modinfo {int eeprom_len; int type; } ;


 scalar_t__ E1000_SUCCESS ;
 int EIO ;
 int EOPNOTSUPP ;
 int ETH_MODULE_SFF_8079 ;
 int ETH_MODULE_SFF_8079_LEN ;
 int ETH_MODULE_SFF_8472 ;
 int ETH_MODULE_SFF_8472_LEN ;
 int IGB_SFF_8472_COMP ;
 int IGB_SFF_8472_SWAP ;
 int IGB_SFF_8472_UNSUP ;
 int IGB_SFF_ADDRESSING_MODE ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_media_type_unknown ;
 int hw_dbg (char*) ;
 scalar_t__ igb_read_phy_reg_i2c (struct e1000_hw*,int ,int*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_get_module_info(struct net_device *netdev,
          struct ethtool_modinfo *modinfo)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 status = E1000_SUCCESS;
 u16 sff8472_rev, addr_mode;
 bool page_swap = 0;

 if ((hw->phy.media_type == e1000_media_type_copper) ||
     (hw->phy.media_type == e1000_media_type_unknown))
  return -EOPNOTSUPP;


 status = igb_read_phy_reg_i2c(hw, IGB_SFF_8472_COMP, &sff8472_rev);
 if (status != E1000_SUCCESS)
  return -EIO;


 status = igb_read_phy_reg_i2c(hw, IGB_SFF_8472_SWAP, &addr_mode);
 if (status != E1000_SUCCESS)
  return -EIO;


 if ((addr_mode & 0xFF) & IGB_SFF_ADDRESSING_MODE) {
  hw_dbg("Address change required to access page 0xA2, but not supported. Please report the module type to the driver maintainers.\n");
  page_swap = 1;
 }

 if ((sff8472_rev & 0xFF) == IGB_SFF_8472_UNSUP || page_swap) {

  modinfo->type = ETH_MODULE_SFF_8079;
  modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
 } else {

  modinfo->type = ETH_MODULE_SFF_8472;
  modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
 }

 return 0;
}
