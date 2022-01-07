
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int hw_dbg (char*) ;
 scalar_t__ igb_phy_sw_reset (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int,int) ;

__attribute__((used)) static s32 igb_phy_hw_reset_sgmii_82575(struct e1000_hw *hw)
{
 s32 ret_val;





 hw_dbg("Soft resetting SGMII attached PHY...\n");




 ret_val = hw->phy.ops.write_reg(hw, 0x1B, 0x8084);
 if (ret_val)
  goto out;

 ret_val = igb_phy_sw_reset(hw);

out:
 return ret_val;
}
