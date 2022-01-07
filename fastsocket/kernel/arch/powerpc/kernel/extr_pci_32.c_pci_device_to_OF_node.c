
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; int bus; } ;
struct device_node {int dummy; } ;


 struct device_node* pci_busdev_to_OF_node (int ,int ) ;

struct device_node*
pci_device_to_OF_node(struct pci_dev *dev)
{
 return pci_busdev_to_OF_node(dev->bus, dev->devfn);
}
