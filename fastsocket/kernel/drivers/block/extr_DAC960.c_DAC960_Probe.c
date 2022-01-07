
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_7__ {int * disks; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 scalar_t__ DAC960_ControllerCount ;
 int DAC960_CreateProcEntries (TYPE_1__*) ;
 TYPE_1__* DAC960_DetectController (struct pci_dev*,struct pci_device_id const*) ;
 int DAC960_Error (char*,int *,scalar_t__) ;
 int DAC960_FinalizeController (TYPE_1__*) ;
 int DAC960_InitializeController (TYPE_1__*) ;
 scalar_t__ DAC960_MaxControllers ;
 int DAC960_MaxLogicalDrives ;
 int ENODEV ;
 int add_disk (int ) ;
 int disk_size (TYPE_1__*,int) ;
 int set_capacity (int ,int ) ;

__attribute__((used)) static int
DAC960_Probe(struct pci_dev *dev, const struct pci_device_id *entry)
{
  int disk;
  DAC960_Controller_T *Controller;

  if (DAC960_ControllerCount == DAC960_MaxControllers)
  {
 DAC960_Error("More than %d DAC960 Controllers detected - "
                       "ignoring from Controller at\n",
                       ((void*)0), DAC960_MaxControllers);
 return -ENODEV;
  }

  Controller = DAC960_DetectController(dev, entry);
  if (!Controller)
 return -ENODEV;

  if (!DAC960_InitializeController(Controller)) {
   DAC960_FinalizeController(Controller);
 return -ENODEV;
  }

  for (disk = 0; disk < DAC960_MaxLogicalDrives; disk++) {
        set_capacity(Controller->disks[disk], disk_size(Controller, disk));
        add_disk(Controller->disks[disk]);
  }
  DAC960_CreateProcEntries(Controller);
  return 0;
}
