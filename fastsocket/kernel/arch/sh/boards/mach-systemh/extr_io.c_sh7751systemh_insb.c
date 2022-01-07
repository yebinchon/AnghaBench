
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sh7751systemh_inb (unsigned long) ;

void sh7751systemh_insb(unsigned long port, void *addr, unsigned long count)
{
 unsigned char *p = addr;
 while (count--) *p++ = sh7751systemh_inb(port);
}
