
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int (* check_link ) (struct ixgbe_hw*,int *,int*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int stub1 (struct ixgbe_hw*,int *,int*,int) ;

__attribute__((used)) static int ixgbe_link_test(struct ixgbe_adapter *adapter, u64 *data)
{
 struct ixgbe_hw *hw = &adapter->hw;
 bool link_up;
 u32 link_speed = 0;
 *data = 0;

 hw->mac.ops.check_link(hw, &link_speed, &link_up, 1);
 if (link_up)
  return *data;
 else
  *data = 1;
 return *data;
}
