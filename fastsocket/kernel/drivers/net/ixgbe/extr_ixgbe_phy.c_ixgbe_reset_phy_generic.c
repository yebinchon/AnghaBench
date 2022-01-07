
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* check_overtemp ) (struct ixgbe_hw*) ;int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;int (* write_reg ) (struct ixgbe_hw*,int ,int ,int) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; int reset_if_overtemp; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_OVERTEMP ;
 scalar_t__ IXGBE_ERR_RESET_FAILED ;
 int MDIO_CTRL1 ;
 int MDIO_CTRL1_RESET ;
 int MDIO_MMD_PHYXS ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_identify_phy_generic (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_phy_none ;
 scalar_t__ ixgbe_phy_unknown ;
 int msleep (int) ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int) ;
 int stub3 (struct ixgbe_hw*,int ,int ,int*) ;
 int udelay (int) ;

s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
{
 u32 i;
 u16 ctrl = 0;
 s32 status = 0;

 if (hw->phy.type == ixgbe_phy_unknown)
  status = ixgbe_identify_phy_generic(hw);

 if (status != 0 || hw->phy.type == ixgbe_phy_none)
  goto out;


 if (!hw->phy.reset_if_overtemp &&
     (IXGBE_ERR_OVERTEMP == hw->phy.ops.check_overtemp(hw)))
  goto out;





 hw->phy.ops.write_reg(hw, MDIO_CTRL1,
         MDIO_MMD_PHYXS,
         MDIO_CTRL1_RESET);






 for (i = 0; i < 30; i++) {
  msleep(100);
  hw->phy.ops.read_reg(hw, MDIO_CTRL1,
         MDIO_MMD_PHYXS, &ctrl);
  if (!(ctrl & MDIO_CTRL1_RESET)) {
   udelay(2);
   break;
  }
 }

 if (ctrl & MDIO_CTRL1_RESET) {
  status = IXGBE_ERR_RESET_FAILED;
  hw_dbg(hw, "PHY reset polling failed to complete.\n");
 }

out:
 return status;
}
