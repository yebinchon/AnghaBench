
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int (* read_posted ) (struct ixgbe_hw*,int*,int) ;int (* write_posted ) (struct ixgbe_hw*,int*,int) ;} ;
struct ixgbe_mbx_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;
typedef int msgbuf ;


 int ENOMEM ;
 int IXGBE_VF_SET_MACVLAN ;
 int IXGBE_VT_MSGINFO_SHIFT ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int memcpy (int *,int *,int) ;
 int memset (int*,int ,int) ;
 int stub1 (struct ixgbe_hw*,int*,int) ;
 int stub2 (struct ixgbe_hw*,int*,int) ;

__attribute__((used)) static s32 ixgbevf_set_uc_addr_vf(struct ixgbe_hw *hw, u32 index, u8 *addr)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 u32 msgbuf[3];
 u8 *msg_addr = (u8 *)(&msgbuf[1]);
 s32 ret_val;

 memset(msgbuf, 0, sizeof(msgbuf));






 msgbuf[0] |= index << IXGBE_VT_MSGINFO_SHIFT;
 msgbuf[0] |= IXGBE_VF_SET_MACVLAN;
 if (addr)
  memcpy(msg_addr, addr, 6);
 ret_val = mbx->ops.write_posted(hw, msgbuf, 3);

 if (!ret_val)
  ret_val = mbx->ops.read_posted(hw, msgbuf, 3);

 msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;

 if (!ret_val)
  if (msgbuf[0] ==
      (IXGBE_VF_SET_MACVLAN | IXGBE_VT_MSGTYPE_NACK))
   ret_val = -ENOMEM;

 return ret_val;
}
