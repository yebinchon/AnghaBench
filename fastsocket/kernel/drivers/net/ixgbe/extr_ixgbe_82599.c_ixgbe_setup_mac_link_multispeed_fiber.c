
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ media_type; int autoneg_advertised; } ;
struct TYPE_4__ {scalar_t__ (* get_link_capabilities ) (struct ixgbe_hw*,int*,int*) ;scalar_t__ (* check_link ) (struct ixgbe_hw*,int*,int*,int) ;int (* flap_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_ESDP ;
 int IXGBE_ESDP_SDP5 ;
 int IXGBE_ESDP_SDP5_DIR ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_UNKNOWN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_media_type_fiber_fixed ;
 int ixgbe_set_fiber_fixed_speed (struct ixgbe_hw*,int) ;
 scalar_t__ ixgbe_setup_mac_link_82599 (struct ixgbe_hw*,int,int) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int*,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int*,int*,int) ;
 int stub3 (struct ixgbe_hw*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int*,int*,int) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int*,int*,int) ;
 int stub6 (struct ixgbe_hw*) ;
 scalar_t__ stub7 (struct ixgbe_hw*,int*,int*,int) ;

__attribute__((used)) static s32 ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
                                          ixgbe_link_speed speed,
                                          bool autoneg_wait_to_complete)
{
 s32 status = 0;
 ixgbe_link_speed link_speed = IXGBE_LINK_SPEED_UNKNOWN;
 ixgbe_link_speed highest_link_speed = IXGBE_LINK_SPEED_UNKNOWN;
 u32 speedcnt = 0;
 u32 esdp_reg = IXGBE_READ_REG(hw, IXGBE_ESDP);
 u32 i = 0;
 bool link_up = 0;
 bool autoneg = 0;


 status = hw->mac.ops.get_link_capabilities(hw, &link_speed,
         &autoneg);
 if (status != 0)
  return status;

 speed &= link_speed;





 if (speed & IXGBE_LINK_SPEED_10GB_FULL) {
  speedcnt++;
  highest_link_speed = IXGBE_LINK_SPEED_10GB_FULL;


  status = hw->mac.ops.check_link(hw, &link_speed, &link_up,
      0);
  if (status != 0)
   return status;

  if ((link_speed == IXGBE_LINK_SPEED_10GB_FULL) && link_up)
   goto out;


  if (hw->phy.media_type == ixgbe_media_type_fiber_fixed) {
   ixgbe_set_fiber_fixed_speed(hw,
     IXGBE_LINK_SPEED_10GB_FULL);
  } else {
   esdp_reg |= (IXGBE_ESDP_SDP5_DIR | IXGBE_ESDP_SDP5);
   IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp_reg);
   IXGBE_WRITE_FLUSH(hw);
  }


  msleep(40);

  status = ixgbe_setup_mac_link_82599(hw,
          IXGBE_LINK_SPEED_10GB_FULL,
          autoneg_wait_to_complete);
  if (status != 0)
   return status;


  if (hw->mac.ops.flap_tx_laser)
   hw->mac.ops.flap_tx_laser(hw);






  for (i = 0; i < 5; i++) {

   msleep(100);


   status = hw->mac.ops.check_link(hw, &link_speed,
       &link_up, 0);
   if (status != 0)
    return status;

   if (link_up)
    goto out;
  }
 }

 if (speed & IXGBE_LINK_SPEED_1GB_FULL) {
  speedcnt++;
  if (highest_link_speed == IXGBE_LINK_SPEED_UNKNOWN)
   highest_link_speed = IXGBE_LINK_SPEED_1GB_FULL;


  status = hw->mac.ops.check_link(hw, &link_speed, &link_up,
      0);
  if (status != 0)
   return status;

  if ((link_speed == IXGBE_LINK_SPEED_1GB_FULL) && link_up)
   goto out;


  if (hw->phy.media_type == ixgbe_media_type_fiber_fixed) {
   ixgbe_set_fiber_fixed_speed(hw,
      IXGBE_LINK_SPEED_1GB_FULL);
  } else {
   esdp_reg &= ~IXGBE_ESDP_SDP5;
   esdp_reg |= IXGBE_ESDP_SDP5_DIR;
   IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp_reg);
   IXGBE_WRITE_FLUSH(hw);
  }


  msleep(40);

  status = ixgbe_setup_mac_link_82599(hw,
          IXGBE_LINK_SPEED_1GB_FULL,
          autoneg_wait_to_complete);
  if (status != 0)
   return status;


  if (hw->mac.ops.flap_tx_laser)
   hw->mac.ops.flap_tx_laser(hw);


  msleep(100);


  status = hw->mac.ops.check_link(hw, &link_speed, &link_up,
      0);
  if (status != 0)
   return status;

  if (link_up)
   goto out;
 }






 if (speedcnt > 1)
  status = ixgbe_setup_mac_link_multispeed_fiber(hw,
                                                 highest_link_speed,
                                                 autoneg_wait_to_complete);

out:

 hw->phy.autoneg_advertised = 0;

 if (speed & IXGBE_LINK_SPEED_10GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_10GB_FULL;

 if (speed & IXGBE_LINK_SPEED_1GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_1GB_FULL;

 return status;
}
