
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_PHY0_SM ;
 int IXGBE_GSSR_PHY1_SM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_STATUS ;
 int IXGBE_STATUS_LAN_ID_1 ;
 int ixgbe_read_phy_reg_mdi (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;

s32 ixgbe_read_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
                               u32 device_type, u16 *phy_data)
{
 s32 status;
 u16 gssr;

 if (IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_LAN_ID_1)
  gssr = IXGBE_GSSR_PHY1_SM;
 else
  gssr = IXGBE_GSSR_PHY0_SM;

 if (hw->mac.ops.acquire_swfw_sync(hw, gssr) == 0) {
  status = ixgbe_read_phy_reg_mdi(hw, reg_addr, device_type,
      phy_data);
  hw->mac.ops.release_swfw_sync(hw, gssr);
 } else {
  status = IXGBE_ERR_SWFW_SYNC;
 }

 return status;
}
