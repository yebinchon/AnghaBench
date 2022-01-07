
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct pci_driver {unsigned long long name; } ;
struct pci_dev {TYPE_2__* resource; int irq; int device; int vendor; int devfn; TYPE_1__* bus; } ;
typedef int resource_size_t ;
struct TYPE_4__ {int flags; scalar_t__ start; scalar_t__ end; } ;
struct TYPE_3__ {int number; } ;


 int PCI_REGION_FLAG_MASK ;
 int PCI_ROM_RESOURCE ;
 struct pci_driver* pci_dev_driver (struct pci_dev const*) ;
 int pci_resource_to_user (struct pci_dev const*,int,TYPE_2__*,int*,int*) ;
 int seq_printf (struct seq_file*,char*,unsigned long long,...) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int show_device(struct seq_file *m, void *v)
{
 const struct pci_dev *dev = v;
 const struct pci_driver *drv;
 int i;

 if (dev == ((void*)0))
  return 0;

 drv = pci_dev_driver(dev);
 seq_printf(m, "%02x%02x\t%04x%04x\t%x",
   dev->bus->number,
   dev->devfn,
   dev->vendor,
   dev->device,
   dev->irq);


 for (i = 0; i <= PCI_ROM_RESOURCE; i++) {
  resource_size_t start, end;
  pci_resource_to_user(dev, i, &dev->resource[i], &start, &end);
  seq_printf(m, "\t%16llx",
   (unsigned long long)(start |
   (dev->resource[i].flags & PCI_REGION_FLAG_MASK)));
 }
 for (i = 0; i <= PCI_ROM_RESOURCE; i++) {
  resource_size_t start, end;
  pci_resource_to_user(dev, i, &dev->resource[i], &start, &end);
  seq_printf(m, "\t%16llx",
   dev->resource[i].start < dev->resource[i].end ?
   (unsigned long long)(end - start) + 1 : 0);
 }
 seq_putc(m, '\t');
 if (drv)
  seq_printf(m, "%s", drv->name);
 seq_putc(m, '\n');
 return 0;
}
