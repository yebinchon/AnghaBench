
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coherent_dma_mask; int * dma_parms; int * dma_mask; int release; } ;
struct pci_dev {int state_saved; int bus_list; TYPE_1__ dev; int dma_parms; int dma_mask; } ;
struct pci_bus {int devices; } ;


 int device_initialize (TYPE_1__*) ;
 int down_write (int *) ;
 int list_add_tail (int *,int *) ;
 int pci_bus_sem ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_fixup_device (int ,struct pci_dev*) ;
 int pci_fixup_header ;
 int pci_init_capabilities (struct pci_dev*) ;
 int pci_reassigndev_resource_alignment (struct pci_dev*) ;
 int pci_release_dev ;
 int pci_set_dma_max_seg_size (struct pci_dev*,int) ;
 int pci_set_dma_seg_boundary (struct pci_dev*,int) ;
 int up_write (int *) ;

void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
{
 device_initialize(&dev->dev);
 dev->dev.release = pci_release_dev;
 pci_dev_get(dev);

 dev->dev.dma_mask = &dev->dma_mask;
 dev->dev.dma_parms = &dev->dma_parms;
 dev->dev.coherent_dma_mask = 0xffffffffull;

 pci_set_dma_max_seg_size(dev, 65536);
 pci_set_dma_seg_boundary(dev, 0xffffffff);


 pci_fixup_device(pci_fixup_header, dev);


 pci_reassigndev_resource_alignment(dev);


 dev->state_saved = 0;


 pci_init_capabilities(dev);





 down_write(&pci_bus_sem);
 list_add_tail(&dev->bus_list, &bus->devices);
 up_write(&pci_bus_sem);
}
