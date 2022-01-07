
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int autoneg_advertised; int smart_speed_active; } ;
struct TYPE_4__ {scalar_t__ (* check_link ) (struct ixgbe_hw*,int*,int*,int) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_AUTOC ;
 int IXGBE_AUTOC_KR_SUPP ;
 int IXGBE_AUTOC_KX4_KX_SUPP_MASK ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_UNKNOWN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SMARTSPEED_MAX_RETRIES ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_setup_mac_link_82599 (struct ixgbe_hw*,int,int) ;
 int mdelay (int) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int*,int*,int) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int*,int*,int) ;

__attribute__((used)) static s32 ixgbe_setup_mac_link_smartspeed(struct ixgbe_hw *hw,
         ixgbe_link_speed speed,
         bool autoneg_wait_to_complete)
{
 s32 status = 0;
 ixgbe_link_speed link_speed = IXGBE_LINK_SPEED_UNKNOWN;
 s32 i, j;
 bool link_up = 0;
 u32 autoc_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC);


 hw->phy.autoneg_advertised = 0;

 if (speed & IXGBE_LINK_SPEED_10GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_10GB_FULL;

 if (speed & IXGBE_LINK_SPEED_1GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_1GB_FULL;

 if (speed & IXGBE_LINK_SPEED_100_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_100_FULL;
 hw->phy.smart_speed_active = 0;
 for (j = 0; j < IXGBE_SMARTSPEED_MAX_RETRIES; j++) {
  status = ixgbe_setup_mac_link_82599(hw, speed,
          autoneg_wait_to_complete);
  if (status != 0)
   goto out;







  for (i = 0; i < 5; i++) {
   mdelay(100);


   status = hw->mac.ops.check_link(hw, &link_speed,
       &link_up, 0);
   if (status != 0)
    goto out;

   if (link_up)
    goto out;
  }
 }





 if (((autoc_reg & IXGBE_AUTOC_KR_SUPP) == 0) ||
     ((autoc_reg & IXGBE_AUTOC_KX4_KX_SUPP_MASK) == 0))
  goto out;


 hw->phy.smart_speed_active = 1;
 status = ixgbe_setup_mac_link_82599(hw, speed,
         autoneg_wait_to_complete);
 if (status != 0)
  goto out;







 for (i = 0; i < 6; i++) {
  mdelay(100);


  status = hw->mac.ops.check_link(hw, &link_speed,
      &link_up, 0);
  if (status != 0)
   goto out;

  if (link_up)
   goto out;
 }


 hw->phy.smart_speed_active = 0;
 status = ixgbe_setup_mac_link_82599(hw, speed,
         autoneg_wait_to_complete);

out:
 if (link_up && (link_speed == IXGBE_LINK_SPEED_1GB_FULL))
  hw_dbg(hw, "Smartspeed has downgraded the link speed from "
         "the maximum advertised\n");
 return status;
}
