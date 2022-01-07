
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 unsigned long IORESOURCE_PREFETCH ;
 int __pci_setup_bridge (struct pci_bus*,unsigned long) ;

__attribute__((used)) static void pci_setup_bridge(struct pci_bus *bus)
{
 unsigned long type = IORESOURCE_IO | IORESOURCE_MEM |
      IORESOURCE_PREFETCH;

 __pci_setup_bridge(bus, type);
}
