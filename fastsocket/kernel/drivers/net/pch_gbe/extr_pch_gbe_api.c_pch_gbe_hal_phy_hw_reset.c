
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_gbe_hw {TYPE_1__* func; } ;
struct TYPE_2__ {int (* reset_phy ) (struct pch_gbe_hw*) ;} ;


 int pr_err (char*) ;
 int stub1 (struct pch_gbe_hw*) ;

inline void pch_gbe_hal_phy_hw_reset(struct pch_gbe_hw *hw)
{
 if (!hw->func->reset_phy)
  pr_err("ERROR: configuration\n");
 else
  hw->func->reset_phy(hw);
}
