
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * prev; int next; } ;
struct pci_dev {TYPE_1__ bus_list; } ;


 int down_write (int *) ;
 int list_del (TYPE_1__*) ;
 int pci_bus_sem ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_free_resources (struct pci_dev*) ;
 int up_write (int *) ;

__attribute__((used)) static void pci_destroy_dev(struct pci_dev *dev)
{


 down_write(&pci_bus_sem);
 list_del(&dev->bus_list);
 dev->bus_list.next = dev->bus_list.prev = ((void*)0);
 up_write(&pci_bus_sem);

 pci_free_resources(dev);
 pci_dev_put(dev);
}
