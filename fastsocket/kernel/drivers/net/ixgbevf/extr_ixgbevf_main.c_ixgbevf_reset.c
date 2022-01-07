
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int addr_len; int perm_addr; int dev_addr; } ;
struct TYPE_3__ {int (* init_hw ) (struct ixgbe_hw*) ;scalar_t__ (* reset_hw ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int addr; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; struct net_device* netdev; } ;


 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int ixgbevf_negotiate_api (struct ixgbevf_adapter*) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;

void ixgbevf_reset(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;

 if (hw->mac.ops.reset_hw(hw)) {
  hw_dbg(hw, "PF still resetting\n");
 } else {
  hw->mac.ops.init_hw(hw);
  ixgbevf_negotiate_api(adapter);
 }

 if (is_valid_ether_addr(adapter->hw.mac.addr)) {
  memcpy(netdev->dev_addr, adapter->hw.mac.addr,
         netdev->addr_len);
  memcpy(netdev->perm_addr, adapter->hw.mac.addr,
         netdev->addr_len);
 }
}
