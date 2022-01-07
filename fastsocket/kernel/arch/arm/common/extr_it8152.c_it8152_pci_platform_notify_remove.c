
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * bus; } ;


 int dmabounce_unregister_dev (struct device*) ;
 int pci_bus_type ;

__attribute__((used)) static int it8152_pci_platform_notify_remove(struct device *dev)
{
 if (dev->bus == &pci_bus_type)
  dmabounce_unregister_dev(dev);

 return 0;
}
