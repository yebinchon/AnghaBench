
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_VF_SET_LPE ;
 int ixgbevf_write_msg_read_ack (struct ixgbe_hw*,int *,int) ;

void ixgbevf_rlpml_set_vf(struct ixgbe_hw *hw, u16 max_size)
{
 u32 msgbuf[2];

 msgbuf[0] = IXGBE_VF_SET_LPE;
 msgbuf[1] = max_size;
 ixgbevf_write_msg_read_ack(hw, msgbuf, 2);
}
