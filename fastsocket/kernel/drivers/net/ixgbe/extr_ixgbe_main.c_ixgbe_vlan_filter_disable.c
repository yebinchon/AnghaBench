
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VLNCTRL ;
 int IXGBE_VLNCTRL_CFIEN ;
 int IXGBE_VLNCTRL_VFE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbe_vlan_filter_disable(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 vlnctrl;

 vlnctrl = IXGBE_READ_REG(hw, IXGBE_VLNCTRL);
 vlnctrl &= ~(IXGBE_VLNCTRL_VFE | IXGBE_VLNCTRL_CFIEN);
 IXGBE_WRITE_REG(hw, IXGBE_VLNCTRL, vlnctrl);
}
