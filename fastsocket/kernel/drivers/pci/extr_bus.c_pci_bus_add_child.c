
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ parent; } ;
struct pci_bus {int is_added; TYPE_1__ dev; scalar_t__ bridge; } ;


 int device_register (TYPE_1__*) ;
 int pci_create_legacy_files (struct pci_bus*) ;

int pci_bus_add_child(struct pci_bus *bus)
{
 int retval;

 if (bus->bridge)
  bus->dev.parent = bus->bridge;

 retval = device_register(&bus->dev);
 if (retval)
  return retval;

 bus->is_added = 1;


 pci_create_legacy_files(bus);

 return retval;
}
