
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct resource {int flags; scalar_t__ start; scalar_t__ end; } ;
struct pci_dev {scalar_t__ hdr_type; int class; struct resource* resource; int dev; } ;
typedef scalar_t__ resource_size_t ;


 int IORESOURCE_MEM ;
 int PCI_BRIDGE_RESOURCES ;
 int PCI_CLASS_BRIDGE_HOST ;
 int PCI_CLASS_BRIDGE_PCI ;
 int PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ;
 scalar_t__ PCI_HEADER_TYPE_NORMAL ;
 int PCI_NUM_RESOURCES ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 int pci_disable_bridge_window (struct pci_dev*) ;
 int pci_is_reassigndev (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 scalar_t__ pci_specified_resource_alignment (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;
 scalar_t__ resource_size (struct resource*) ;

void pci_reassigndev_resource_alignment(struct pci_dev *dev)
{
 int i;
 struct resource *r;
 resource_size_t align, size;
 u16 command;

 if (!pci_is_reassigndev(dev))
  return;

 if (dev->hdr_type == PCI_HEADER_TYPE_NORMAL &&
     (dev->class >> 8) == PCI_CLASS_BRIDGE_HOST) {
  dev_warn(&dev->dev,
   "Can't reassign resources to host bridge.\n");
  return;
 }

 dev_info(&dev->dev,
  "Disabling memory decoding and releasing memory resources.\n");
 pci_read_config_word(dev, PCI_COMMAND, &command);
 command &= ~PCI_COMMAND_MEMORY;
 pci_write_config_word(dev, PCI_COMMAND, command);

 align = pci_specified_resource_alignment(dev);
 for (i = 0; i < PCI_BRIDGE_RESOURCES; i++) {
  r = &dev->resource[i];
  if (!(r->flags & IORESOURCE_MEM))
   continue;
  size = resource_size(r);
  if (size < align) {
   size = align;
   dev_info(&dev->dev,
    "Rounding up size of resource #%d to %#llx.\n",
    i, (unsigned long long)size);
  }
  r->end = size - 1;
  r->start = 0;
 }




 if (dev->hdr_type == PCI_HEADER_TYPE_BRIDGE &&
     (dev->class >> 8) == PCI_CLASS_BRIDGE_PCI) {
  for (i = PCI_BRIDGE_RESOURCES; i < PCI_NUM_RESOURCES; i++) {
   r = &dev->resource[i];
   if (!(r->flags & IORESOURCE_MEM))
    continue;
   r->end = resource_size(r) - 1;
   r->start = 0;
  }
  pci_disable_bridge_window(dev);
 }
}
