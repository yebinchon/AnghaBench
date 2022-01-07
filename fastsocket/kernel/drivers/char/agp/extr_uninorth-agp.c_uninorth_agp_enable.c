
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct agp_bridge_data {TYPE_1__* dev; scalar_t__ capndx; } ;
struct TYPE_3__ {int dev; } ;


 int AGPSTAT2_4X ;
 int AGPSTAT_MODE_3_0 ;
 int AGPSTAT_RQ_DEPTH ;
 int AGPSTAT_RQ_DEPTH_SHIFT ;
 scalar_t__ PCI_AGP_COMMAND ;
 int PCI_AGP_COMMAND_AGP ;
 scalar_t__ PCI_AGP_STATUS ;
 int agp_collect_device_status (struct agp_bridge_data*,int,int) ;
 int agp_device_command (int,int) ;
 int dev_err (int *,char*) ;
 int pci_read_config_dword (TYPE_1__*,scalar_t__,int*) ;
 int pci_write_config_dword (TYPE_1__*,scalar_t__,int) ;
 int uninorth_rev ;
 int uninorth_tlbflush (int *) ;

__attribute__((used)) static void uninorth_agp_enable(struct agp_bridge_data *bridge, u32 mode)
{
 u32 command, scratch, status;
 int timeout;

 pci_read_config_dword(bridge->dev,
         bridge->capndx + PCI_AGP_STATUS,
         &status);

 command = agp_collect_device_status(bridge, mode, status);
 command |= PCI_AGP_COMMAND_AGP;

 if (uninorth_rev == 0x21) {




  command &= ~AGPSTAT2_4X;
 }

 if ((uninorth_rev >= 0x30) && (uninorth_rev <= 0x33)) {




  if ((command >> AGPSTAT_RQ_DEPTH_SHIFT) > 7)
   command = (command & ~AGPSTAT_RQ_DEPTH)
    | (7 << AGPSTAT_RQ_DEPTH_SHIFT);
 }

 uninorth_tlbflush(((void*)0));

 timeout = 0;
 do {
  pci_write_config_dword(bridge->dev,
           bridge->capndx + PCI_AGP_COMMAND,
           command);
  pci_read_config_dword(bridge->dev,
          bridge->capndx + PCI_AGP_COMMAND,
           &scratch);
 } while ((scratch & PCI_AGP_COMMAND_AGP) == 0 && ++timeout < 1000);
 if ((scratch & PCI_AGP_COMMAND_AGP) == 0)
  dev_err(&bridge->dev->dev, "can't write UniNorth AGP "
   "command register\n");

 if (uninorth_rev >= 0x30) {

  agp_device_command(command, (status & AGPSTAT_MODE_3_0) != 0);
 } else {

  agp_device_command(command, 0);
 }

 uninorth_tlbflush(((void*)0));
}
