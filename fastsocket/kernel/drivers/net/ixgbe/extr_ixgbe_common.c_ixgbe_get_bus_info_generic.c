
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* set_lan_id ) (struct ixgbe_hw*) ;} ;
struct ixgbe_mac_info {TYPE_1__ ops; } ;
struct TYPE_4__ {int speed; int width; int type; } ;
struct ixgbe_hw {TYPE_2__ bus; struct ixgbe_mac_info mac; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {int pdev; } ;
typedef int s32 ;


 int IXGBE_PCI_LINK_STATUS ;
 int ixgbe_bus_type_pci_express ;
 int ixgbe_convert_bus_speed (int ) ;
 int ixgbe_convert_bus_width (int ) ;
 int pci_read_config_word (int ,int ,int *) ;
 int stub1 (struct ixgbe_hw*) ;

s32 ixgbe_get_bus_info_generic(struct ixgbe_hw *hw)
{
 struct ixgbe_adapter *adapter = hw->back;
 struct ixgbe_mac_info *mac = &hw->mac;
 u16 link_status;

 hw->bus.type = ixgbe_bus_type_pci_express;


 pci_read_config_word(adapter->pdev, IXGBE_PCI_LINK_STATUS,
                      &link_status);

 hw->bus.width = ixgbe_convert_bus_width(link_status);
 hw->bus.speed = ixgbe_convert_bus_speed(link_status);

 mac->ops.set_lan_id(hw);

 return 0;
}
