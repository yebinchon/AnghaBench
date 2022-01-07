
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VTEICR ;
 int ixgbevf_configure (struct ixgbevf_adapter*) ;
 int ixgbevf_irq_enable (struct ixgbevf_adapter*) ;
 int ixgbevf_reset_queues (struct ixgbevf_adapter*) ;
 int ixgbevf_up_complete (struct ixgbevf_adapter*) ;

void ixgbevf_up(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;

 ixgbevf_reset_queues(adapter);

 ixgbevf_configure(adapter);

 ixgbevf_up_complete(adapter);


 IXGBE_READ_REG(hw, IXGBE_VTEICR);

 ixgbevf_irq_enable(adapter);
}
