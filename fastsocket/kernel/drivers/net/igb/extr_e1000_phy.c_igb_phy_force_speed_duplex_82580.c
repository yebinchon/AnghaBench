
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct e1000_phy_info {scalar_t__ autoneg_wait_to_complete; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int I82580_PHY_CTRL2_MDIX_CFG_MASK ;
 int I82580_PHY_CTRL_2 ;
 int PHY_CONTROL ;
 int PHY_FORCE_LIMIT ;
 int hw_dbg (char*,...) ;
 int igb_phy_force_speed_duplex_setup (struct e1000_hw*,int *) ;
 scalar_t__ igb_phy_has_link (struct e1000_hw*,int ,int,int*) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int ) ;
 int udelay (int) ;

s32 igb_phy_force_speed_duplex_82580(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data;
 bool link;

 ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_data);
 if (ret_val)
  goto out;

 igb_phy_force_speed_duplex_setup(hw, &phy_data);

 ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_data);
 if (ret_val)
  goto out;




 ret_val = phy->ops.read_reg(hw, I82580_PHY_CTRL_2, &phy_data);
 if (ret_val)
  goto out;

 phy_data &= ~I82580_PHY_CTRL2_MDIX_CFG_MASK;

 ret_val = phy->ops.write_reg(hw, I82580_PHY_CTRL_2, phy_data);
 if (ret_val)
  goto out;

 hw_dbg("I82580_PHY_CTRL_2: %X\n", phy_data);

 udelay(1);

 if (phy->autoneg_wait_to_complete) {
  hw_dbg("Waiting for forced speed/duplex link on 82580 phy\n");

  ret_val = igb_phy_has_link(hw, PHY_FORCE_LIMIT, 100000, &link);
  if (ret_val)
   goto out;

  if (!link)
   hw_dbg("Link taking longer than expected.\n");


  ret_val = igb_phy_has_link(hw, PHY_FORCE_LIMIT, 100000, &link);
  if (ret_val)
   goto out;
 }

out:
 return ret_val;
}
