
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {void* current_state; int pm_cap; } ;
typedef int pci_power_t ;


 int ENODEV ;
 void* PCI_D0 ;
 int pci_update_current_state (struct pci_dev*,int ) ;
 scalar_t__ platform_pci_power_manageable (struct pci_dev*) ;
 int platform_pci_set_power_state (struct pci_dev*,int ) ;

__attribute__((used)) static int pci_platform_power_transition(struct pci_dev *dev, pci_power_t state)
{
 int error;

 if (platform_pci_power_manageable(dev)) {
  error = platform_pci_set_power_state(dev, state);
  if (!error)
   pci_update_current_state(dev, state);

  if (!dev->pm_cap)
   dev->current_state = PCI_D0;
 } else {
  error = -ENODEV;

  if (!dev->pm_cap)
   dev->current_state = PCI_D0;
 }

 return error;
}
