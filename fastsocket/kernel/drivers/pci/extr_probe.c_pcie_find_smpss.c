
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_dev {TYPE_1__* bus; scalar_t__ is_hotplug_bridge; } ;
struct TYPE_2__ {scalar_t__ self; int devices; } ;


 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 int list_is_singular (int *) ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (scalar_t__) ;
 scalar_t__ rh_get_mpss (struct pci_dev*) ;

__attribute__((used)) static int pcie_find_smpss(struct pci_dev *dev, void *data)
{
 u8 *smpss = data;

 if (!pci_is_pcie(dev))
  return 0;
 if (dev->is_hotplug_bridge && (!list_is_singular(&dev->bus->devices) ||
      (dev->bus->self &&
       pci_pcie_type(dev->bus->self) != PCI_EXP_TYPE_ROOT_PORT)))
  *smpss = 0;

 if (*smpss > rh_get_mpss(dev))
  *smpss = rh_get_mpss(dev);

 return 0;
}
