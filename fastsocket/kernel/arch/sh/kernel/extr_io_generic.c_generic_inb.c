
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int __ioport_map (unsigned long,int) ;
 int __raw_readb (int ) ;

u8 generic_inb(unsigned long port)
{
 return __raw_readb(__ioport_map(port, 1));
}
