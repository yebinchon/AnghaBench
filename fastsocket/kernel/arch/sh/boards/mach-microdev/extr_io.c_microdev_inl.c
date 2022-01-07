
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PCIBIOS_MIN_IO ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 unsigned int microdev_pci_inl (unsigned long) ;

unsigned int microdev_inl(unsigned long port)
{




 return *(volatile unsigned int*)PORT2ADDR(port);
}
