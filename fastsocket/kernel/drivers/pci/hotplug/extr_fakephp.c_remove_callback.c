
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_remove_bus_device (struct pci_dev*) ;

__attribute__((used)) static void remove_callback(void *data)
{
 pci_remove_bus_device((struct pci_dev *)data);
}
