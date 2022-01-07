
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; scalar_t__ end; scalar_t__ start; } ;
struct pci_dev {int bus; } ;
struct pci_controller {scalar_t__ pci_mem_offset; scalar_t__ io_base_virt; } ;
typedef scalar_t__ resource_size_t ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 scalar_t__ _IO_BASE ;
 struct pci_controller* pci_bus_to_host (int ) ;

void pci_resource_to_user(const struct pci_dev *dev, int bar,
     const struct resource *rsrc,
     resource_size_t *start, resource_size_t *end)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 resource_size_t offset = 0;

 if (hose == ((void*)0))
  return;

 if (rsrc->flags & IORESOURCE_IO)
  offset = (unsigned long)hose->io_base_virt - _IO_BASE;
 *start = rsrc->start - offset;
 *end = rsrc->end - offset;
}
