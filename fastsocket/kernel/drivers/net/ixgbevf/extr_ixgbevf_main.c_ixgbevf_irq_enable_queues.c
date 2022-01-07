
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_VTEIMS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

__attribute__((used)) static inline void ixgbevf_irq_enable_queues(struct ixgbevf_adapter *adapter,
          u32 qmask)
{
 struct ixgbe_hw *hw = &adapter->hw;

 IXGBE_WRITE_REG(hw, IXGBE_VTEIMS, qmask);
}
