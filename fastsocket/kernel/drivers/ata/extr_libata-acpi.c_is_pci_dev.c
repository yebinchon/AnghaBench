
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * bus; } ;


 int pci_bus_type ;

__attribute__((used)) static int is_pci_dev(struct device *dev)
{
 return (dev->bus == &pci_bus_type);
}
