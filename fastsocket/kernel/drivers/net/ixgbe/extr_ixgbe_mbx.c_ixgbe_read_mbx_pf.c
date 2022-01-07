
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_3__ {int msgs_rx; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
typedef scalar_t__ s32 ;


 int IXGBE_PFMAILBOX (size_t) ;
 int IXGBE_PFMAILBOX_ACK ;
 int IXGBE_PFMBMEM (size_t) ;
 int IXGBE_READ_REG_ARRAY (struct ixgbe_hw*,int ,size_t) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 scalar_t__ ixgbe_obtain_mbx_lock_pf (struct ixgbe_hw*,size_t) ;

__attribute__((used)) static s32 ixgbe_read_mbx_pf(struct ixgbe_hw *hw, u32 *msg, u16 size,
                             u16 vf_number)
{
 s32 ret_val;
 u16 i;


 ret_val = ixgbe_obtain_mbx_lock_pf(hw, vf_number);
 if (ret_val)
  goto out_no_read;


 for (i = 0; i < size; i++)
  msg[i] = IXGBE_READ_REG_ARRAY(hw, IXGBE_PFMBMEM(vf_number), i);


 IXGBE_WRITE_REG(hw, IXGBE_PFMAILBOX(vf_number), IXGBE_PFMAILBOX_ACK);


 hw->mbx.stats.msgs_rx++;

out_no_read:
 return ret_val;
}
