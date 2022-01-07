
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 int AUTOINCflag ;
 int TIME (char*,int,int ) ;
 int _ADDR_HI ;
 int _ADDR_LO ;
 int _MEMDATA ;
 int outb (int,int ) ;
 int outsb (int ,void*,int) ;

__attribute__((used)) static void com20020_copy_to_card(struct net_device *dev, int bufnum,
      int offset, void *buf, int count)
{
 int ioaddr = dev->base_addr, ofs = 512 * bufnum + offset;


 outb((ofs >> 8) | AUTOINCflag, _ADDR_HI);
 outb(ofs & 0xff, _ADDR_LO);


 TIME("outsb", count, outsb(_MEMDATA, buf, count));
}
