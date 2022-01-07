
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ (* read ) (struct e1000_hw*,int*,int) ;int (* check_for_rst ) (struct e1000_hw*) ;} ;
struct e1000_mbx_info {int timeout; TYPE_1__ ops; } ;
struct e1000_mac_info {int get_link_status; } ;
struct e1000_hw {struct e1000_mac_info mac; struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int E1000_ERR_MAC_INIT ;
 int E1000_STATUS_LU ;
 int E1000_SUCCESS ;
 int E1000_VT_MSGTYPE_CTS ;
 int E1000_VT_MSGTYPE_NACK ;
 int STATUS ;
 int er32 (int ) ;
 int stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*,int*,int) ;

__attribute__((used)) static s32 e1000_check_for_link_vf(struct e1000_hw *hw)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val = E1000_SUCCESS;
 u32 in_msg = 0;
 if (!mbx->ops.check_for_rst(hw) || !mbx->timeout)
  mac->get_link_status = 1;

 if (!mac->get_link_status)
  goto out;


 if (!(er32(STATUS) & E1000_STATUS_LU))
  goto out;



 if (mbx->ops.read(hw, &in_msg, 1))
  goto out;


 if (!(in_msg & E1000_VT_MSGTYPE_CTS)) {

  if (in_msg & E1000_VT_MSGTYPE_NACK)
   ret_val = -E1000_ERR_MAC_INIT;
  goto out;
 }


 if (!mbx->timeout) {
  ret_val = -E1000_ERR_MAC_INIT;
  goto out;
 }



 mac->get_link_status = 0;

out:
 return ret_val;
}
