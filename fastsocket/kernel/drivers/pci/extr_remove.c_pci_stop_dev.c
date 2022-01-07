
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; scalar_t__ is_added; int dev; } ;
struct TYPE_2__ {scalar_t__ self; } ;


 int device_unregister (int *) ;
 int pci_proc_detach_device (struct pci_dev*) ;
 int pci_remove_sysfs_dev_files (struct pci_dev*) ;
 int pcie_aspm_exit_link_state (struct pci_dev*) ;

__attribute__((used)) static void pci_stop_dev(struct pci_dev *dev)
{
 if (dev->is_added) {
  pci_proc_detach_device(dev);
  pci_remove_sysfs_dev_files(dev);
  device_unregister(&dev->dev);
  dev->is_added = 0;
 }

 if (dev->bus->self)
  pcie_aspm_exit_link_state(dev);
}
