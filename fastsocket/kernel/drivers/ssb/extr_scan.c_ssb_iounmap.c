
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int bustype; int * mapped_device; int * mmio; int host_pci; } ;


 int SSB_BUG_ON (int) ;




 int iounmap (int *) ;
 int pci_iounmap (int ,int *) ;

void ssb_iounmap(struct ssb_bus *bus)
{
 switch (bus->bustype) {
 case 128:
 case 130:
  iounmap(bus->mmio);
  break;
 case 131:



  SSB_BUG_ON(1);

  break;
 case 129:
  break;
 }
 bus->mmio = ((void*)0);
 bus->mapped_device = ((void*)0);
}
