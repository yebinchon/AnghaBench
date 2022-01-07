
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int speed; int type; } ;
struct pch_gbe_hw {TYPE_1__ bus; } ;


 int pch_gbe_bus_speed_2500 ;
 int pch_gbe_bus_type_pci_express ;
 int pch_gbe_bus_width_pcie_x1 ;

__attribute__((used)) static void pch_gbe_plat_get_bus_info(struct pch_gbe_hw *hw)
{
 hw->bus.type = pch_gbe_bus_type_pci_express;
 hw->bus.speed = pch_gbe_bus_speed_2500;
 hw->bus.width = pch_gbe_bus_width_pcie_x1;
}
