
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* check_for_rst ) (struct ixgbe_hw*,int ) ;} ;
struct ixgbe_mbx_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;


 int IXGBE_ERR_MBX ;
 int stub1 (struct ixgbe_hw*,int ) ;

s32 ixgbe_check_for_rst(struct ixgbe_hw *hw, u16 mbx_id)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 s32 ret_val = IXGBE_ERR_MBX;

 if (mbx->ops.check_for_rst)
  ret_val = mbx->ops.check_for_rst(hw, mbx_id);

 return ret_val;
}
