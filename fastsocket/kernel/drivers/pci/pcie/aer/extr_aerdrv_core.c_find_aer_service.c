
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port_service_driver {int dummy; } ;
struct pci_dev {int dev; } ;


 int device_for_each_child (int *,struct pcie_port_service_driver**,int ) ;
 int find_aer_service_iter ;

__attribute__((used)) static struct pcie_port_service_driver *find_aer_service(struct pci_dev *dev)
{
 struct pcie_port_service_driver *drv = ((void*)0);

 device_for_each_child(&dev->dev, &drv, find_aer_service_iter);

 return drv;
}
