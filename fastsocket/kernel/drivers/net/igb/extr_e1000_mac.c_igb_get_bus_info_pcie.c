
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_bus_info {int width; int func; void* speed; int type; } ;
struct e1000_hw {struct e1000_bus_info bus; } ;
typedef scalar_t__ s32 ;
typedef enum e1000_bus_width { ____Placeholder_e1000_bus_width } e1000_bus_width ;


 int E1000_STATUS ;
 int E1000_STATUS_FUNC_MASK ;
 int E1000_STATUS_FUNC_SHIFT ;
 int PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_CLS ;


 int PCI_EXP_LNKSTA_NLW ;
 int PCI_EXP_LNKSTA_NLW_SHIFT ;
 void* e1000_bus_speed_2500 ;
 void* e1000_bus_speed_5000 ;
 void* e1000_bus_speed_unknown ;
 int e1000_bus_type_pci_express ;
 int e1000_bus_width_unknown ;
 scalar_t__ igb_read_pcie_cap_reg (struct e1000_hw*,int ,int*) ;
 int rd32 (int ) ;

s32 igb_get_bus_info_pcie(struct e1000_hw *hw)
{
 struct e1000_bus_info *bus = &hw->bus;
 s32 ret_val;
 u32 reg;
 u16 pcie_link_status;

 bus->type = e1000_bus_type_pci_express;

 ret_val = igb_read_pcie_cap_reg(hw,
     PCI_EXP_LNKSTA,
     &pcie_link_status);
 if (ret_val) {
  bus->width = e1000_bus_width_unknown;
  bus->speed = e1000_bus_speed_unknown;
 } else {
  switch (pcie_link_status & PCI_EXP_LNKSTA_CLS) {
  case 129:
   bus->speed = e1000_bus_speed_2500;
   break;
  case 128:
   bus->speed = e1000_bus_speed_5000;
   break;
  default:
   bus->speed = e1000_bus_speed_unknown;
   break;
  }

  bus->width = (enum e1000_bus_width)((pcie_link_status &
           PCI_EXP_LNKSTA_NLW) >>
           PCI_EXP_LNKSTA_NLW_SHIFT);
 }

 reg = rd32(E1000_STATUS);
 bus->func = (reg & E1000_STATUS_FUNC_MASK) >> E1000_STATUS_FUNC_SHIFT;

 return 0;
}
