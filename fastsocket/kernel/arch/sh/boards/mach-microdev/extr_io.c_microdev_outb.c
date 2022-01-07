
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IO_LAN91C111_BASE ;
 unsigned long IO_LAN91C111_EXTENT ;
 unsigned long PCIBIOS_MIN_IO ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 unsigned short microdev_inw (unsigned long const) ;
 int microdev_outw (unsigned short,unsigned long const) ;
 int microdev_pci_outb (unsigned char,unsigned long) ;

void microdev_outb(unsigned char b, unsigned long port)
{
 if ((port >= IO_LAN91C111_BASE) &&
     (port < IO_LAN91C111_BASE + IO_LAN91C111_EXTENT)) {




  if (port % 2 == 1) {

   const unsigned long evenPort = port-1;
   unsigned short word;
   word = microdev_inw(evenPort);
   word = (word & 0xffu) | (b << 8);
   microdev_outw(word, evenPort);
  } else {

   unsigned short word;
   word = microdev_inw(port);
   word = (word & 0xff00u) | (b);
   microdev_outw(word, port);
  }
 } else {
  *(volatile unsigned char*)PORT2ADDR(port) = b;
 }
}
