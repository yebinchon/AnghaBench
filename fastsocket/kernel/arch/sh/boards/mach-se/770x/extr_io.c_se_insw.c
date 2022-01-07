
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int * port2adr (unsigned long) ;

void se_insw(unsigned long port, void *addr, unsigned long count)
{
 volatile __u16 *p = port2adr(port);
 __u16 *ap = addr;
 while (count--)
  *ap++ = *p;
}
