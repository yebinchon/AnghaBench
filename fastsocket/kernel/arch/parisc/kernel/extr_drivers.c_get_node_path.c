
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hardware_path {int* bc; int mod; } ;
struct device {struct device* parent; int * bus; } ;
struct TYPE_4__ {int hw_path; } ;
struct TYPE_3__ {unsigned int devfn; } ;


 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 scalar_t__ is_pci_dev (struct device*) ;
 int memset (int**,int,int) ;
 int parisc_bus_type ;
 struct device root ;
 TYPE_2__* to_parisc_device (struct device*) ;
 TYPE_1__* to_pci_dev (struct device*) ;

__attribute__((used)) static void get_node_path(struct device *dev, struct hardware_path *path)
{
 int i = 5;
 memset(&path->bc, -1, 6);

 if (is_pci_dev(dev)) {
  unsigned int devfn = to_pci_dev(dev)->devfn;
  path->mod = PCI_FUNC(devfn);
  path->bc[i--] = PCI_SLOT(devfn);
  dev = dev->parent;
 }

 while (dev != &root) {
  if (is_pci_dev(dev)) {
   unsigned int devfn = to_pci_dev(dev)->devfn;
   path->bc[i--] = PCI_SLOT(devfn) | (PCI_FUNC(devfn)<< 5);
  } else if (dev->bus == &parisc_bus_type) {
   path->bc[i--] = to_parisc_device(dev)->hw_path;
  }
  dev = dev->parent;
 }
}
