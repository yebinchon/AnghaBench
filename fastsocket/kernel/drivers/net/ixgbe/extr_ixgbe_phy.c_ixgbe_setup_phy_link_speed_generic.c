
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* setup_link ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int autoneg_advertised; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int stub1 (struct ixgbe_hw*) ;

s32 ixgbe_setup_phy_link_speed_generic(struct ixgbe_hw *hw,
                                       ixgbe_link_speed speed,
                                       bool autoneg_wait_to_complete)
{





 hw->phy.autoneg_advertised = 0;

 if (speed & IXGBE_LINK_SPEED_10GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_10GB_FULL;

 if (speed & IXGBE_LINK_SPEED_1GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_1GB_FULL;

 if (speed & IXGBE_LINK_SPEED_100_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_100_FULL;


 hw->phy.ops.setup_link(hw);

 return 0;
}
