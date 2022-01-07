
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PCIBIOS_MIN_IO ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 unsigned char microdev_pci_inb (unsigned long) ;

unsigned char microdev_inb(unsigned long port)
{




 return *(volatile unsigned char*)PORT2ADDR(port);
}
