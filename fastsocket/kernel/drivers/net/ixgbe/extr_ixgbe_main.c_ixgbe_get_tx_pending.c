
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ixgbe_ring {scalar_t__ count; int reg_idx; int netdev; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TDH (int ) ;
 int IXGBE_TDT (int ) ;
 struct ixgbe_adapter* netdev_priv (int ) ;

__attribute__((used)) static u64 ixgbe_get_tx_pending(struct ixgbe_ring *ring)
{
 struct ixgbe_adapter *adapter = netdev_priv(ring->netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 u32 head = IXGBE_READ_REG(hw, IXGBE_TDH(ring->reg_idx));
 u32 tail = IXGBE_READ_REG(hw, IXGBE_TDT(ring->reg_idx));

 if (head != tail)
  return (head < tail) ?
   tail - head : (tail + ring->count - head);

 return 0;
}
