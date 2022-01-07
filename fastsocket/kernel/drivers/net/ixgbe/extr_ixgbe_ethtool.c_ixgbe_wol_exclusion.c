
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int subsystem_device_id; int device_id; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
struct ethtool_wolinfo {scalar_t__ supported; } ;


 int ixgbe_wol_supported (struct ixgbe_adapter*,int ,int ) ;

__attribute__((used)) static int ixgbe_wol_exclusion(struct ixgbe_adapter *adapter,
                               struct ethtool_wolinfo *wol)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int retval = 0;


 if (!ixgbe_wol_supported(adapter, hw->device_id,
     hw->subsystem_device_id)) {
  retval = 1;
  wol->supported = 0;
 }

 return retval;
}
