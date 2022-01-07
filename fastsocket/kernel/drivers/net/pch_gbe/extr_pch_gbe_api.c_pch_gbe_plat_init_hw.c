
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ pch_gbe_phy_get_id (struct pch_gbe_hw*) ;
 int pch_gbe_phy_init_setting (struct pch_gbe_hw*) ;
 int pch_gbe_phy_set_rgmii (struct pch_gbe_hw*) ;
 int pr_err (char*) ;

__attribute__((used)) static s32 pch_gbe_plat_init_hw(struct pch_gbe_hw *hw)
{
 s32 ret_val;

 ret_val = pch_gbe_phy_get_id(hw);
 if (ret_val) {
  pr_err("pch_gbe_phy_get_id error\n");
  return ret_val;
 }
 pch_gbe_phy_init_setting(hw);




 return ret_val;
}
