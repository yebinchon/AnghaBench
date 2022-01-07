
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_LINKS ;
 scalar_t__ IXGBE_LINKS_SPEED_100_82599 ;
 scalar_t__ IXGBE_LINKS_SPEED_10G_82599 ;
 scalar_t__ IXGBE_LINKS_SPEED_1G_82599 ;
 scalar_t__ IXGBE_LINKS_SPEED_82599 ;
 scalar_t__ IXGBE_LINKS_UP ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_UNKNOWN ;
 scalar_t__ IXGBE_LINK_UP_TIME ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int hw_dbg (struct ixgbe_hw*,char*,scalar_t__,scalar_t__) ;
 int msleep (int) ;

s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
     bool *link_up, bool link_up_wait_to_complete)
{
 u32 links_reg, links_orig;
 u32 i;


 links_orig = IXGBE_READ_REG(hw, IXGBE_LINKS);

 links_reg = IXGBE_READ_REG(hw, IXGBE_LINKS);

 if (links_orig != links_reg) {
  hw_dbg(hw, "LINKS changed from %08X to %08X\n",
         links_orig, links_reg);
 }

 if (link_up_wait_to_complete) {
  for (i = 0; i < IXGBE_LINK_UP_TIME; i++) {
   if (links_reg & IXGBE_LINKS_UP) {
    *link_up = 1;
    break;
   } else {
    *link_up = 0;
   }
   msleep(100);
   links_reg = IXGBE_READ_REG(hw, IXGBE_LINKS);
  }
 } else {
  if (links_reg & IXGBE_LINKS_UP)
   *link_up = 1;
  else
   *link_up = 0;
 }

 if ((links_reg & IXGBE_LINKS_SPEED_82599) ==
     IXGBE_LINKS_SPEED_10G_82599)
  *speed = IXGBE_LINK_SPEED_10GB_FULL;
 else if ((links_reg & IXGBE_LINKS_SPEED_82599) ==
   IXGBE_LINKS_SPEED_1G_82599)
  *speed = IXGBE_LINK_SPEED_1GB_FULL;
 else if ((links_reg & IXGBE_LINKS_SPEED_82599) ==
   IXGBE_LINKS_SPEED_100_82599)
  *speed = IXGBE_LINK_SPEED_100_FULL;
 else
  *speed = IXGBE_LINK_SPEED_UNKNOWN;

 return 0;
}
