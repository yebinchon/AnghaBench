
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int multifunction; int is_added; } ;
struct pci_bus {scalar_t__ self; } ;


 struct pci_dev* pci_scan_single_device (struct pci_bus*,int) ;
 int pcie_aspm_init_link_state (scalar_t__) ;

int pci_scan_slot(struct pci_bus *bus, int devfn)
{
 int fn, nr = 0;
 struct pci_dev *dev;

 dev = pci_scan_single_device(bus, devfn);
 if (dev && !dev->is_added)
  nr++;

 if (dev && dev->multifunction) {
  for (fn = 1; fn < 8; fn++) {
   dev = pci_scan_single_device(bus, devfn + fn);
   if (dev) {
    if (!dev->is_added)
     nr++;
    dev->multifunction = 1;
   }
  }
 }


 if (bus->self && nr)
  pcie_aspm_init_link_state(bus->self);

 return nr;
}
