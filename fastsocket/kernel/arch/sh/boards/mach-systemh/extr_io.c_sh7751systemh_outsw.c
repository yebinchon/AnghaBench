
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sh7751systemh_outw (int ,unsigned long) ;

void sh7751systemh_outsw(unsigned long port, const void *addr, unsigned long count)
{
 unsigned short *p = (unsigned short*)addr;
 while (count--) sh7751systemh_outw(*p++, port);
}
