
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ (* read_posted ) (struct ixgbe_hw*,int*,int) ;scalar_t__ (* write_posted ) (struct ixgbe_hw*,int*,int) ;} ;
struct ixgbe_mbx_info {TYPE_1__ ops; } ;
struct TYPE_4__ {int addr; } ;
struct ixgbe_hw {TYPE_2__ mac; struct ixgbe_mbx_info mbx; } ;
typedef scalar_t__ s32 ;
typedef int msgbuf ;


 int IXGBE_VF_SET_MAC_ADDR ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int ixgbevf_get_mac_addr_vf (struct ixgbe_hw*,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int*,int ,int) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int*,int) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int*,int) ;

__attribute__((used)) static s32 ixgbevf_set_rar_vf(struct ixgbe_hw *hw, u32 index, u8 *addr,
         u32 vmdq)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 u32 msgbuf[3];
 u8 *msg_addr = (u8 *)(&msgbuf[1]);
 s32 ret_val;

 memset(msgbuf, 0, sizeof(msgbuf));
 msgbuf[0] = IXGBE_VF_SET_MAC_ADDR;
 memcpy(msg_addr, addr, 6);
 ret_val = mbx->ops.write_posted(hw, msgbuf, 3);

 if (!ret_val)
  ret_val = mbx->ops.read_posted(hw, msgbuf, 3);

 msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;


 if (!ret_val &&
     (msgbuf[0] == (IXGBE_VF_SET_MAC_ADDR | IXGBE_VT_MSGTYPE_NACK)))
  ixgbevf_get_mac_addr_vf(hw, hw->mac.addr);

 return ret_val;
}
