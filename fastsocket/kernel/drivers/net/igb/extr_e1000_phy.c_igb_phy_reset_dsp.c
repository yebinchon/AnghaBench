
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int M88E1000_PHY_GEN_CONTROL ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 igb_phy_reset_dsp(struct e1000_hw *hw)
{
 s32 ret_val = 0;

 if (!(hw->phy.ops.write_reg))
  goto out;

 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xC1);
 if (ret_val)
  goto out;

 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0);

out:
 return ret_val;
}
