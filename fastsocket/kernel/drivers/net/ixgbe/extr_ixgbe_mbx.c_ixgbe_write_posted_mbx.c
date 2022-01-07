
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* write ) (struct ixgbe_hw*,int *,int ,int ) ;} ;
struct ixgbe_mbx_info {TYPE_1__ ops; int timeout; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_MBX ;
 scalar_t__ ixgbe_poll_for_ack (struct ixgbe_hw*,int ) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int *,int ,int ) ;

__attribute__((used)) static s32 ixgbe_write_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size,
                           u16 mbx_id)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 s32 ret_val = IXGBE_ERR_MBX;


 if (!mbx->ops.write || !mbx->timeout)
  goto out;


 ret_val = mbx->ops.write(hw, msg, size, mbx_id);


 if (!ret_val)
  ret_val = ixgbe_poll_for_ack(hw, mbx_id);
out:
 return ret_val;
}
