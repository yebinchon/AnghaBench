
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_hw {int dummy; } ;


 int pch_gbe_phy_sw_reset (struct pch_gbe_hw*) ;

inline void pch_gbe_phy_set_rgmii(struct pch_gbe_hw *hw)
{
 pch_gbe_phy_sw_reset(hw);
}
