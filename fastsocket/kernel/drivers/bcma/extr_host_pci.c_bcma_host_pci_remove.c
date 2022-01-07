
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct bcma_bus {int mmio; } ;


 int bcma_bus_unregister (struct bcma_bus*) ;
 int kfree (struct bcma_bus*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct bcma_bus* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void bcma_host_pci_remove(struct pci_dev *dev)
{
 struct bcma_bus *bus = pci_get_drvdata(dev);

 bcma_bus_unregister(bus);
 pci_iounmap(dev, bus->mmio);
 pci_release_regions(dev);
 pci_disable_device(dev);
 kfree(bus);
 pci_set_drvdata(dev, ((void*)0));
}
