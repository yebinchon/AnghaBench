
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sh7751systemh_outb (int ,unsigned long) ;

void sh7751systemh_outsb(unsigned long port, const void *addr, unsigned long count)
{
 unsigned char *p = (unsigned char*)addr;
 while (count--) sh7751systemh_outb(*p++, port);
}
