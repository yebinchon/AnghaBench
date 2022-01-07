
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_gbe_hw {TYPE_1__* func; } ;
struct TYPE_2__ {int (* power_down_phy ) (struct pch_gbe_hw*) ;} ;


 int stub1 (struct pch_gbe_hw*) ;

inline void pch_gbe_hal_power_down_phy(struct pch_gbe_hw *hw)
{
 if (hw->func->power_down_phy)
  hw->func->power_down_phy(hw);
}
