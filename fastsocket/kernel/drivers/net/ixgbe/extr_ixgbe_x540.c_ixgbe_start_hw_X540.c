
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_pb_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_X540_RX_PB_SIZE ;
 scalar_t__ ixgbe_start_hw_gen2 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_start_hw_generic (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_start_hw_X540(struct ixgbe_hw *hw)
{
 s32 ret_val = 0;

 ret_val = ixgbe_start_hw_generic(hw);
 if (ret_val != 0)
  goto out;

 ret_val = ixgbe_start_hw_gen2(hw);
 hw->mac.rx_pb_size = IXGBE_X540_RX_PB_SIZE;
out:
 return ret_val;
}
