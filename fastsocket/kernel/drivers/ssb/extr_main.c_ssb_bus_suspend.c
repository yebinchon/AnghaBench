
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int chipco; } ;


 int SSB_GPIO_PLL ;
 int SSB_GPIO_XTAL ;
 int ssb_chipco_suspend (int *) ;
 int ssb_pci_xtal (struct ssb_bus*,int,int ) ;

int ssb_bus_suspend(struct ssb_bus *bus)
{
 ssb_chipco_suspend(&bus->chipco);
 ssb_pci_xtal(bus, SSB_GPIO_XTAL | SSB_GPIO_PLL, 0);

 return 0;
}
