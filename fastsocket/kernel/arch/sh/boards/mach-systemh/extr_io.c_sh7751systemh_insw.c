
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sh7751systemh_inw (unsigned long) ;

void sh7751systemh_insw(unsigned long port, void *addr, unsigned long count)
{
 unsigned short *p = addr;
 while (count--) *p++ = sh7751systemh_inw(port);
}
