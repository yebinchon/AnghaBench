
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_MBX ;
 int IXGBE_VFMAILBOX ;
 int IXGBE_VFMAILBOX_VFU ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbevf_read_v2p_mailbox (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbevf_obtain_mbx_lock_vf(struct ixgbe_hw *hw)
{
 s32 ret_val = IXGBE_ERR_MBX;


 IXGBE_WRITE_REG(hw, IXGBE_VFMAILBOX, IXGBE_VFMAILBOX_VFU);


 if (ixgbevf_read_v2p_mailbox(hw) & IXGBE_VFMAILBOX_VFU)
  ret_val = 0;

 return ret_val;
}
