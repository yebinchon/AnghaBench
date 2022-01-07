
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {scalar_t__ (* validate_checksum ) (struct ixgbe_hw*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 scalar_t__ stub1 (struct ixgbe_hw*,int *) ;

__attribute__((used)) static int ixgbe_eeprom_test(struct ixgbe_adapter *adapter, u64 *data)
{
 struct ixgbe_hw *hw = &adapter->hw;
 if (hw->eeprom.ops.validate_checksum(hw, ((void*)0)))
  *data = 1;
 else
  *data = 0;
 return *data;
}
