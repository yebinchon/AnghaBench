
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PCIBIOS_MIN_IO ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int microdev_pci_outw (unsigned short,unsigned long) ;

void microdev_outw(unsigned short b, unsigned long port)
{






 *(volatile unsigned short*)PORT2ADDR(port) = b;
}
