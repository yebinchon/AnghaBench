
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_delay_us; } ;
struct pch_gbe_hw {int * func; TYPE_1__ phy; } ;


 int PCH_GBE_PHY_RESET_DELAY_US ;
 int pch_gbe_ops ;

__attribute__((used)) static void pch_gbe_plat_init_function_pointers(struct pch_gbe_hw *hw)
{

 hw->phy.reset_delay_us = PCH_GBE_PHY_RESET_DELAY_US;

 hw->func = &pch_gbe_ops;
}
