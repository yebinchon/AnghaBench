
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int revision; int subsystem_device; int subsystem_vendor; int device; int vendor; } ;
struct e1000_hw {int mac_type; int phy_init_script; int wait_autoneg_complete; int tbi_compatibility_en; int adaptive_ifs; scalar_t__ media_type; int disable_polarity_correction; int master_slave; int mdix; int min_frame_size; scalar_t__ max_frame_size; int pci_cmd_word; int revision_id; int subsystem_id; int subsystem_vendor_id; int device_id; int vendor_id; } ;
struct e1000_adapter {TYPE_1__* netdev; struct pci_dev* pdev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 int AUTO_ALL_MODES ;
 int E1000_MASTER_SLAVE ;
 int EIO ;
 scalar_t__ ENET_HEADER_SIZE ;
 scalar_t__ ETHERNET_FCS_SIZE ;
 int MINIMUM_ETHERNET_FRAME_SIZE ;
 int PCI_COMMAND ;




 int e1000_get_bus_info (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_set_mac_type (struct e1000_hw*) ;
 int e1000_set_media_type (struct e1000_hw*) ;
 int e_err (int ,char*) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int probe ;

__attribute__((used)) static int e1000_init_hw_struct(struct e1000_adapter *adapter,
    struct e1000_hw *hw)
{
 struct pci_dev *pdev = adapter->pdev;


 hw->vendor_id = pdev->vendor;
 hw->device_id = pdev->device;
 hw->subsystem_vendor_id = pdev->subsystem_vendor;
 hw->subsystem_id = pdev->subsystem_device;
 hw->revision_id = pdev->revision;

 pci_read_config_word(pdev, PCI_COMMAND, &hw->pci_cmd_word);

 hw->max_frame_size = adapter->netdev->mtu +
        ENET_HEADER_SIZE + ETHERNET_FCS_SIZE;
 hw->min_frame_size = MINIMUM_ETHERNET_FRAME_SIZE;


 if (e1000_set_mac_type(hw)) {
  e_err(probe, "Unknown MAC Type\n");
  return -EIO;
 }

 switch (hw->mac_type) {
 default:
  break;
 case 131:
 case 129:
 case 130:
 case 128:
  hw->phy_init_script = 1;
  break;
 }

 e1000_set_media_type(hw);
 e1000_get_bus_info(hw);

 hw->wait_autoneg_complete = 0;
 hw->tbi_compatibility_en = 1;
 hw->adaptive_ifs = 1;



 if (hw->media_type == e1000_media_type_copper) {
  hw->mdix = AUTO_ALL_MODES;
  hw->disable_polarity_correction = 0;
  hw->master_slave = E1000_MASTER_SLAVE;
 }

 return 0;
}
