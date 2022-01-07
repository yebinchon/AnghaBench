
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EISA_bus ;
 int eisa_permute (unsigned short) ;
 unsigned char gsc_readb (int ) ;

unsigned char eisa_in8(unsigned short port)
{
 if (EISA_bus)
  return gsc_readb(eisa_permute(port));
 return 0xff;
}
