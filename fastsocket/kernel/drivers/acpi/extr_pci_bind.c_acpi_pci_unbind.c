
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int subordinate; } ;
struct TYPE_2__ {int * unbind; int * bind; } ;
struct acpi_device {TYPE_1__ ops; int handle; } ;


 struct pci_dev* acpi_get_pci_dev (int ) ;
 int acpi_pci_irq_del_prt (int ) ;
 int pci_dev_put (struct pci_dev*) ;

__attribute__((used)) static int acpi_pci_unbind(struct acpi_device *device)
{
 struct pci_dev *dev;

 dev = acpi_get_pci_dev(device->handle);
 if (!dev || !dev->subordinate)
  goto out;

 acpi_pci_irq_del_prt(dev->subordinate);

 device->ops.bind = ((void*)0);
 device->ops.unbind = ((void*)0);

out:
 pci_dev_put(dev);
 return 0;
}
