
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; int flags; } ;
struct pci_dev {struct pci_controller* sysdata; } ;
struct pci_controller {TYPE_2__* mem_resource; TYPE_1__* io_resource; } ;
typedef int resource_size_t ;
struct TYPE_4__ {int start; } ;
struct TYPE_3__ {int start; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int PCIBIOS_MIN_IO ;
 int PCIBIOS_MIN_MEM ;

void
pcibios_align_resource(void *data, struct resource *res,
         resource_size_t size, resource_size_t align)
{
 struct pci_dev *dev = data;
 struct pci_controller *hose = dev->sysdata;
 resource_size_t start = res->start;

 if (res->flags & IORESOURCE_IO) {

  if (start < PCIBIOS_MIN_IO + hose->io_resource->start)
   start = PCIBIOS_MIN_IO + hose->io_resource->start;




  if (start & 0x300)
   start = (start + 0x3ff) & ~0x3ff;
 } else if (res->flags & IORESOURCE_MEM) {

  if (start < PCIBIOS_MIN_MEM + hose->mem_resource->start)
   start = PCIBIOS_MIN_MEM + hose->mem_resource->start;
 }

 res->start = start;
}
