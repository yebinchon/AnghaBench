
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ (* read ) (struct ixgbe_hw*,int*,int) ;int (* check_for_rst ) (struct ixgbe_hw*) ;} ;
struct ixgbe_mbx_info {int timeout; TYPE_1__ ops; } ;
struct ixgbe_mac_info {int get_link_status; } ;
struct ixgbe_hw {struct ixgbe_mac_info mac; struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;





 int IXGBE_LINKS_SPEED_82599 ;
 int IXGBE_LINKS_UP ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFLINKS ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int*,int) ;

__attribute__((used)) static s32 ixgbevf_check_mac_link_vf(struct ixgbe_hw *hw,
         ixgbe_link_speed *speed,
         bool *link_up,
         bool autoneg_wait_to_complete)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 struct ixgbe_mac_info *mac = &hw->mac;
 s32 ret_val = 0;
 u32 links_reg;
 u32 in_msg = 0;


 if (!mbx->ops.check_for_rst(hw) || !mbx->timeout)
  mac->get_link_status = 1;

 if (!mac->get_link_status)
  goto out;


 links_reg = IXGBE_READ_REG(hw, IXGBE_VFLINKS);
 if (!(links_reg & IXGBE_LINKS_UP))
  goto out;

 switch (links_reg & IXGBE_LINKS_SPEED_82599) {
 case 129:
  *speed = IXGBE_LINK_SPEED_10GB_FULL;
  break;
 case 128:
  *speed = IXGBE_LINK_SPEED_1GB_FULL;
  break;
 case 130:
  *speed = IXGBE_LINK_SPEED_100_FULL;
  break;
 }



 if (mbx->ops.read(hw, &in_msg, 1))
  goto out;

 if (!(in_msg & IXGBE_VT_MSGTYPE_CTS)) {

  if (in_msg & IXGBE_VT_MSGTYPE_NACK)
   ret_val = -1;
  goto out;
 }


 if (!mbx->timeout) {
  ret_val = -1;
  goto out;
 }



 mac->get_link_status = 0;

out:
 *link_up = !mac->get_link_status;
 return ret_val;
}
