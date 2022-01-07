
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ (* check_for_link ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int autoneg_failed; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_STATUS_LU ;
 scalar_t__ FIBER_LINK_UP_LIMIT ;
 int STATUS ;
 int e_dbg (char*) ;
 scalar_t__ er32 (int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_poll_fiber_serdes_link_generic(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 i, status;
 s32 ret_val;







 for (i = 0; i < FIBER_LINK_UP_LIMIT; i++) {
  usleep_range(10000, 20000);
  status = er32(STATUS);
  if (status & E1000_STATUS_LU)
   break;
 }
 if (i == FIBER_LINK_UP_LIMIT) {
  e_dbg("Never got a valid link from auto-neg!!!\n");
  mac->autoneg_failed = 1;





  ret_val = mac->ops.check_for_link(hw);
  if (ret_val) {
   e_dbg("Error while checking for link\n");
   return ret_val;
  }
  mac->autoneg_failed = 0;
 } else {
  mac->autoneg_failed = 0;
  e_dbg("Valid Link Found\n");
 }

 return 0;
}
