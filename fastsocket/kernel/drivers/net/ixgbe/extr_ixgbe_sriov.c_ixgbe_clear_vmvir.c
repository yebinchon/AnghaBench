
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_VMVIR (int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

__attribute__((used)) static void ixgbe_clear_vmvir(struct ixgbe_adapter *adapter, u32 vf)
{
 struct ixgbe_hw *hw = &adapter->hw;

 IXGBE_WRITE_REG(hw, IXGBE_VMVIR(vf), 0);
}
