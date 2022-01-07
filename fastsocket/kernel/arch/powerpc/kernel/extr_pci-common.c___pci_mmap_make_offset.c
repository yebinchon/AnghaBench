
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; unsigned long start; unsigned long end; } ;
struct pci_dev {struct resource* resource; int bus; } ;
struct pci_controller {unsigned long io_base_phys; scalar_t__ io_base_virt; scalar_t__ pci_mem_offset; } ;
typedef unsigned long resource_size_t ;
typedef enum pci_mmap_state { ____Placeholder_pci_mmap_state } pci_mmap_state ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 unsigned long PAGE_MASK ;
 int PCI_ROM_RESOURCE ;
 unsigned long _IO_BASE ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pci_mmap_io ;
 int pci_mmap_mem ;

__attribute__((used)) static struct resource *__pci_mmap_make_offset(struct pci_dev *dev,
            resource_size_t *offset,
            enum pci_mmap_state mmap_state)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 unsigned long io_offset = 0;
 int i, res_bit;

 if (hose == 0)
  return ((void*)0);


 if (mmap_state == pci_mmap_mem) {



  res_bit = IORESOURCE_MEM;
 } else {
  io_offset = (unsigned long)hose->io_base_virt - _IO_BASE;
  *offset += io_offset;
  res_bit = IORESOURCE_IO;
 }





 for (i = 0; i <= PCI_ROM_RESOURCE; i++) {
  struct resource *rp = &dev->resource[i];
  int flags = rp->flags;


  if (i == PCI_ROM_RESOURCE)
   flags |= IORESOURCE_MEM;


  if ((flags & res_bit) == 0)
   continue;


  if (*offset < (rp->start & PAGE_MASK) || *offset > rp->end)
   continue;


  if (mmap_state == pci_mmap_io)
   *offset += hose->io_base_phys - io_offset;
  return rp;
 }

 return ((void*)0);
}
