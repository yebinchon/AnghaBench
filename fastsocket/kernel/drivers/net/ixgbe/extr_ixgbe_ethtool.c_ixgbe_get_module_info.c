
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* read_i2c_eeprom ) (struct ixgbe_hw*,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
struct ethtool_modinfo {int eeprom_len; int type; } ;


 int EIO ;
 int ETH_MODULE_SFF_8079 ;
 int ETH_MODULE_SFF_8079_LEN ;
 int ETH_MODULE_SFF_8472 ;
 int ETH_MODULE_SFF_8472_LEN ;
 int IXGBE_SFF_ADDRESSING_MODE ;
 int IXGBE_SFF_SFF_8472_COMP ;
 int IXGBE_SFF_SFF_8472_SWAP ;
 int IXGBE_SFF_SFF_8472_UNSUP ;
 int drv ;
 int e_err (int ,char*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int*) ;

__attribute__((used)) static int ixgbe_get_module_info(struct net_device *dev,
           struct ethtool_modinfo *modinfo)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 status;
 u8 sff8472_rev, addr_mode;
 bool page_swap = 0;


 status = hw->phy.ops.read_i2c_eeprom(hw,
          IXGBE_SFF_SFF_8472_COMP,
          &sff8472_rev);
 if (status != 0)
  return -EIO;


 status = hw->phy.ops.read_i2c_eeprom(hw,
          IXGBE_SFF_SFF_8472_SWAP,
          &addr_mode);
 if (status != 0)
  return -EIO;

 if (addr_mode & IXGBE_SFF_ADDRESSING_MODE) {
  e_err(drv, "Address change required to access page 0xA2, but not supported. Please report the module type to the driver maintainers.\n");
  page_swap = 1;
 }

 if (sff8472_rev == IXGBE_SFF_SFF_8472_UNSUP || page_swap) {

  modinfo->type = ETH_MODULE_SFF_8079;
  modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
 } else {

  modinfo->type = ETH_MODULE_SFF_8472;
  modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
 }

 return 0;
}
