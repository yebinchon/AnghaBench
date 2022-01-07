
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_VMVIR (int) ;
 int IXGBE_VMVIR_VLANA_DEFAULT ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int VLAN_PRIO_SHIFT ;

__attribute__((used)) static inline void ixgbe_set_vmvir(struct ixgbe_adapter *adapter,
       u16 vid, u16 qos, u32 vf)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 vmvir = vid | (qos << VLAN_PRIO_SHIFT) | IXGBE_VMVIR_VLANA_DEFAULT;

 IXGBE_WRITE_REG(hw, IXGBE_VMVIR(vf), vmvir);
}
