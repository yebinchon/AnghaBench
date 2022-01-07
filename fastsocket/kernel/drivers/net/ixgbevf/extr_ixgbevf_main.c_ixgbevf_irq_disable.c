
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_msix_vectors; TYPE_1__* msix_entries; struct ixgbe_hw hw; } ;
struct TYPE_2__ {int vector; } ;


 int IXGBE_VTEIAC ;
 int IXGBE_VTEIAM ;
 int IXGBE_VTEIMC ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static inline void ixgbevf_irq_disable(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int i;

 IXGBE_WRITE_REG(hw, IXGBE_VTEIAM, 0);
 IXGBE_WRITE_REG(hw, IXGBE_VTEIMC, ~0);
 IXGBE_WRITE_REG(hw, IXGBE_VTEIAC, 0);

 IXGBE_WRITE_FLUSH(hw);

 for (i = 0; i < adapter->num_msix_vectors; i++)
  synchronize_irq(adapter->msix_entries[i].vector);
}
