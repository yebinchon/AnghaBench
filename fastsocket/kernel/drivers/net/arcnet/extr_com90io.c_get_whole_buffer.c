
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 unsigned int AUTOINCflag ;
 int _ADDR_HI ;
 int _ADDR_LO ;
 int _MEMDATA ;
 int get_buffer_byte (struct net_device*,int ) ;
 int inb (int ) ;
 int outb (unsigned int,int ) ;

__attribute__((used)) static void get_whole_buffer(struct net_device *dev, unsigned offset, unsigned length, char *dest)
{
 int ioaddr = dev->base_addr;

 outb((offset >> 8) | AUTOINCflag, _ADDR_HI);
 outb(offset & 0xff, _ADDR_LO);

 while (length--)



  *(dest++) = inb(_MEMDATA);

}
