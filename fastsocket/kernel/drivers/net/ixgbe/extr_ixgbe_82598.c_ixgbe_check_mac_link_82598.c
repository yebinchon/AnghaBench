
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* read_reg ) (struct ixgbe_hw*,int,int ,int*) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_2__ phy; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 scalar_t__ IXGBE_DEV_ID_82598AT2 ;
 int IXGBE_LINKS ;
 scalar_t__ IXGBE_LINKS_SPEED ;
 scalar_t__ IXGBE_LINKS_UP ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 scalar_t__ IXGBE_LINK_UP_TIME ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int MDIO_MMD_PMAPMD ;
 scalar_t__ ixgbe_phy_nl ;
 scalar_t__ ixgbe_validate_link_ready (struct ixgbe_hw*) ;
 int msleep (int) ;
 int stub1 (struct ixgbe_hw*,int,int ,int*) ;
 int stub2 (struct ixgbe_hw*,int,int ,int*) ;
 int stub3 (struct ixgbe_hw*,int,int ,int*) ;
 int stub4 (struct ixgbe_hw*,int,int ,int*) ;
 int stub5 (struct ixgbe_hw*,int,int ,int*) ;

__attribute__((used)) static s32 ixgbe_check_mac_link_82598(struct ixgbe_hw *hw,
                                      ixgbe_link_speed *speed, bool *link_up,
                                      bool link_up_wait_to_complete)
{
 u32 links_reg;
 u32 i;
 u16 link_reg, adapt_comp_reg;







 if (hw->phy.type == ixgbe_phy_nl) {
  hw->phy.ops.read_reg(hw, 0xC79F, MDIO_MMD_PMAPMD, &link_reg);
  hw->phy.ops.read_reg(hw, 0xC79F, MDIO_MMD_PMAPMD, &link_reg);
  hw->phy.ops.read_reg(hw, 0xC00C, MDIO_MMD_PMAPMD,
                       &adapt_comp_reg);
  if (link_up_wait_to_complete) {
   for (i = 0; i < IXGBE_LINK_UP_TIME; i++) {
    if ((link_reg & 1) &&
        ((adapt_comp_reg & 1) == 0)) {
     *link_up = 1;
     break;
    } else {
     *link_up = 0;
    }
    msleep(100);
    hw->phy.ops.read_reg(hw, 0xC79F,
                         MDIO_MMD_PMAPMD,
                         &link_reg);
    hw->phy.ops.read_reg(hw, 0xC00C,
                         MDIO_MMD_PMAPMD,
                         &adapt_comp_reg);
   }
  } else {
   if ((link_reg & 1) && ((adapt_comp_reg & 1) == 0))
    *link_up = 1;
   else
    *link_up = 0;
  }

  if (!*link_up)
   goto out;
 }

 links_reg = IXGBE_READ_REG(hw, IXGBE_LINKS);
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

 if (links_reg & IXGBE_LINKS_SPEED)
  *speed = IXGBE_LINK_SPEED_10GB_FULL;
 else
  *speed = IXGBE_LINK_SPEED_1GB_FULL;

 if ((hw->device_id == IXGBE_DEV_ID_82598AT2) && *link_up &&
     (ixgbe_validate_link_ready(hw) != 0))
  *link_up = 0;

out:
 return 0;
}
