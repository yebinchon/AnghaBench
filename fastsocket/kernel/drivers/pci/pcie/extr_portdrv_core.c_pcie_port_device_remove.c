
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int cleanup_service_irqs (struct pci_dev*) ;
 int device_for_each_child (int *,int *,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int remove_iter ;

void pcie_port_device_remove(struct pci_dev *dev)
{
 device_for_each_child(&dev->dev, ((void*)0), remove_iter);
 cleanup_service_irqs(dev);
 pci_disable_device(dev);
}
