
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_bus_info {scalar_t__ width; } ;
struct e1000_hw {struct e1000_bus_info bus; } ;
typedef int s32 ;


 scalar_t__ e1000_bus_width_pcie_x1 ;
 scalar_t__ e1000_bus_width_unknown ;
 int e1000e_get_bus_info_pcie (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_get_bus_info_ich8lan(struct e1000_hw *hw)
{
 struct e1000_bus_info *bus = &hw->bus;
 s32 ret_val;

 ret_val = e1000e_get_bus_info_pcie(hw);






 if (bus->width == e1000_bus_width_unknown)
  bus->width = e1000_bus_width_pcie_x1;

 return ret_val;
}
