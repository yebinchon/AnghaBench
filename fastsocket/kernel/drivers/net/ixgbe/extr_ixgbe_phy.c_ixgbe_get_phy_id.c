
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {scalar_t__ id; scalar_t__ revision; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_PHY_REVISION_MASK ;
 int MDIO_DEVID1 ;
 int MDIO_DEVID2 ;
 int MDIO_MMD_PMAPMD ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int*) ;

__attribute__((used)) static s32 ixgbe_get_phy_id(struct ixgbe_hw *hw)
{
 u32 status;
 u16 phy_id_high = 0;
 u16 phy_id_low = 0;

 status = hw->phy.ops.read_reg(hw, MDIO_DEVID1, MDIO_MMD_PMAPMD,
                               &phy_id_high);

 if (status == 0) {
  hw->phy.id = (u32)(phy_id_high << 16);
  status = hw->phy.ops.read_reg(hw, MDIO_DEVID2, MDIO_MMD_PMAPMD,
                                &phy_id_low);
  hw->phy.id |= (u32)(phy_id_low & IXGBE_PHY_REVISION_MASK);
  hw->phy.revision = (u32)(phy_id_low & ~IXGBE_PHY_REVISION_MASK);
 }
 return status;
}
