
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int devfn; } ;
struct TYPE_2__ {struct pci_dev* pcidev; } ;


 scalar_t__ PCI_FUNC (int ) ;
 int PCI_VENDOR_ID_INTEL ;
 TYPE_1__ intel_private ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;

__attribute__((used)) static int find_gmch(u16 device)
{
 struct pci_dev *gmch_device;

 gmch_device = pci_get_device(PCI_VENDOR_ID_INTEL, device, ((void*)0));
 if (gmch_device && PCI_FUNC(gmch_device->devfn) != 0) {
  gmch_device = pci_get_device(PCI_VENDOR_ID_INTEL,
          device, gmch_device);
 }

 if (!gmch_device)
  return 0;

 intel_private.pcidev = gmch_device;
 return 1;
}
