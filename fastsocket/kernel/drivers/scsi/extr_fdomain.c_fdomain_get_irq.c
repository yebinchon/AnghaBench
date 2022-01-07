
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Configuration1 ;
 int PCI_bus ;
 scalar_t__* addresses ;
 scalar_t__ bios_base ;
 scalar_t__ chip ;
 int inb (scalar_t__) ;
 int* ints ;
 int printk (char*,int) ;
 scalar_t__ tmc18c30 ;

__attribute__((used)) static int fdomain_get_irq( int base )
{
   int options = inb(base + Configuration1);
   if (chip != tmc18c30 && !PCI_bus && addresses[(options & 0xc0) >> 6 ] != bios_base)
    return 0;
   return ints[(options & 0x0e) >> 1];
}
