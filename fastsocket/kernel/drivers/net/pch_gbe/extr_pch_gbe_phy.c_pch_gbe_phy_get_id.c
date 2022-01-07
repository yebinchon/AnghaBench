
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int u16 ;
struct pch_gbe_phy_info {int id; void* revision; } ;
struct pch_gbe_hw {struct pch_gbe_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int PHY_ID1 ;
 int PHY_ID2 ;
 scalar_t__ pch_gbe_phy_read_reg_miic (struct pch_gbe_hw*,int ,int*) ;
 int pr_debug (char*,int,void*) ;

s32 pch_gbe_phy_get_id(struct pch_gbe_hw *hw)
{
 struct pch_gbe_phy_info *phy = &hw->phy;
 s32 ret;
 u16 phy_id1;
 u16 phy_id2;

 ret = pch_gbe_phy_read_reg_miic(hw, PHY_ID1, &phy_id1);
 if (ret)
  return ret;
 ret = pch_gbe_phy_read_reg_miic(hw, PHY_ID2, &phy_id2);
 if (ret)
  return ret;




 phy->id = (u32)phy_id1;
 phy->id = ((phy->id << 6) | ((phy_id2 & 0xFC00) >> 10));
 phy->revision = (u32) (phy_id2 & 0x000F);
 pr_debug("phy->id : 0x%08x  phy->revision : 0x%08x\n",
   phy->id, phy->revision);
 return 0;
}
