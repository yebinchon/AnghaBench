
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PCIBIOS_MIN_IO ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 unsigned short microdev_pci_inw (unsigned long) ;

unsigned short microdev_inw(unsigned long port)
{




 return *(volatile unsigned short*)PORT2ADDR(port);
}
