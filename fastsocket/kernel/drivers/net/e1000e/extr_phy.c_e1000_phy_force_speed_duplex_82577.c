
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_phy_info {scalar_t__ autoneg_wait_to_complete; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int MII_BMCR ;
 int PHY_FORCE_LIMIT ;
 int e1000e_phy_force_speed_duplex_setup (struct e1000_hw*,int *) ;
 scalar_t__ e1000e_phy_has_link_generic (struct e1000_hw*,int ,int,int*) ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int ) ;
 int e_dbg (char*) ;
 int udelay (int) ;

s32 e1000_phy_force_speed_duplex_82577(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data;
 bool link;

 ret_val = e1e_rphy(hw, MII_BMCR, &phy_data);
 if (ret_val)
  return ret_val;

 e1000e_phy_force_speed_duplex_setup(hw, &phy_data);

 ret_val = e1e_wphy(hw, MII_BMCR, phy_data);
 if (ret_val)
  return ret_val;

 udelay(1);

 if (phy->autoneg_wait_to_complete) {
  e_dbg("Waiting for forced speed/duplex link on 82577 phy\n");

  ret_val = e1000e_phy_has_link_generic(hw, PHY_FORCE_LIMIT,
            100000, &link);
  if (ret_val)
   return ret_val;

  if (!link)
   e_dbg("Link taking longer than expected.\n");


  ret_val = e1000e_phy_has_link_generic(hw, PHY_FORCE_LIMIT,
            100000, &link);
 }

 return ret_val;
}
