
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* reset_hw ) (struct ixgbe_hw*) ;scalar_t__ (* start_hw ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;

s32 ixgbe_init_hw_generic(struct ixgbe_hw *hw)
{
 s32 status;


 status = hw->mac.ops.reset_hw(hw);

 if (status == 0) {

  status = hw->mac.ops.start_hw(hw);
 }

 return status;
}
