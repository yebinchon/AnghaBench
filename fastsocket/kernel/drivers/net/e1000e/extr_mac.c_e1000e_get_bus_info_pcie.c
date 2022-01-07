
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* set_lan_id ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {TYPE_1__ ops; } ;
struct e1000_bus_info {int width; } ;
struct e1000_hw {struct e1000_adapter* adapter; struct e1000_bus_info bus; struct e1000_mac_info mac; } ;
struct e1000_adapter {TYPE_2__* pdev; } ;
typedef int s32 ;
typedef enum e1000_bus_width { ____Placeholder_e1000_bus_width } e1000_bus_width ;
struct TYPE_4__ {int pcie_cap; } ;


 int PCIE_LINK_STATUS ;
 int PCIE_LINK_WIDTH_MASK ;
 int PCIE_LINK_WIDTH_SHIFT ;
 int e1000_bus_width_unknown ;
 int pci_read_config_word (TYPE_2__*,int,int*) ;
 int stub1 (struct e1000_hw*) ;

s32 e1000e_get_bus_info_pcie(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 struct e1000_bus_info *bus = &hw->bus;
 struct e1000_adapter *adapter = hw->adapter;
 u16 pcie_link_status, cap_offset;

 cap_offset = adapter->pdev->pcie_cap;
 if (!cap_offset) {
  bus->width = e1000_bus_width_unknown;
 } else {
  pci_read_config_word(adapter->pdev,
         cap_offset + PCIE_LINK_STATUS,
         &pcie_link_status);
  bus->width = (enum e1000_bus_width)((pcie_link_status &
           PCIE_LINK_WIDTH_MASK) >>
          PCIE_LINK_WIDTH_SHIFT);
 }

 mac->ops.set_lan_id(hw);

 return 0;
}
