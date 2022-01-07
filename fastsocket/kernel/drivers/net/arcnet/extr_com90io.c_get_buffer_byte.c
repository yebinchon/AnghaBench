
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct net_device {int base_addr; } ;


 int _ADDR_HI ;
 int _ADDR_LO ;
 int _MEMDATA ;
 int inb (int ) ;
 int outb (unsigned int,int ) ;

__attribute__((used)) static u_char get_buffer_byte(struct net_device *dev, unsigned offset)
{
 int ioaddr = dev->base_addr;

 outb(offset >> 8, _ADDR_HI);
 outb(offset & 0xff, _ADDR_LO);

 return inb(_MEMDATA);
}
