
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* read_posted ) (struct ixgbe_hw*,int *,int ) ;int (* write_posted ) (struct ixgbe_hw*,int *,int ) ;} ;
struct ixgbe_mbx_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;


 int IXGBE_VFMAILBOX_SIZE ;
 int stub1 (struct ixgbe_hw*,int *,int ) ;
 int stub2 (struct ixgbe_hw*,int *,int ) ;

__attribute__((used)) static void ixgbevf_write_msg_read_ack(struct ixgbe_hw *hw,
     u32 *msg, u16 size)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 u32 retmsg[IXGBE_VFMAILBOX_SIZE];
 s32 retval = mbx->ops.write_posted(hw, msg, size);

 if (!retval)
  mbx->ops.read_posted(hw, retmsg, size);
}
