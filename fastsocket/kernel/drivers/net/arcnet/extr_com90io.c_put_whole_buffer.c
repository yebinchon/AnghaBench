
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 unsigned int AUTOINCflag ;
 int _ADDR_HI ;
 int _ADDR_LO ;
 int _MEMDATA ;
 int outb (unsigned int,int ) ;
 int put_buffer_byte (struct net_device*,int ,int ) ;

__attribute__((used)) static void put_whole_buffer(struct net_device *dev, unsigned offset, unsigned length, char *dest)
{
 int ioaddr = dev->base_addr;

 outb((offset >> 8) | AUTOINCflag, _ADDR_HI);
 outb(offset & 0xff, _ADDR_LO);

 while (length--)



  outb(*(dest++), _MEMDATA);

}
