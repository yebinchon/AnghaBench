
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct agp_bridge_data {scalar_t__ capndx; } ;
struct TYPE_2__ {int svrwrks_dev; } ;


 scalar_t__ PCI_AGP_COMMAND ;
 scalar_t__ PCI_AGP_STATUS ;
 int agp_collect_device_status (struct agp_bridge_data*,int,int) ;
 int agp_device_command (int,int) ;
 int pci_read_config_dword (int ,scalar_t__,int*) ;
 int pci_write_config_dword (int ,scalar_t__,int) ;
 TYPE_1__ serverworks_private ;

__attribute__((used)) static void serverworks_agp_enable(struct agp_bridge_data *bridge, u32 mode)
{
 u32 command;

 pci_read_config_dword(serverworks_private.svrwrks_dev,
         bridge->capndx + PCI_AGP_STATUS,
         &command);

 command = agp_collect_device_status(bridge, mode, command);

 command &= ~0x10;
 command &= ~0x08;

 command |= 0x100;

 pci_write_config_dword(serverworks_private.svrwrks_dev,
          bridge->capndx + PCI_AGP_COMMAND,
          command);

 agp_device_command(command, 0);
}
