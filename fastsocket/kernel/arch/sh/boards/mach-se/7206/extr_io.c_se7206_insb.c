
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int * port2adr (unsigned long) ;

void se7206_insb(unsigned long port, void *addr, unsigned long count)
{
 volatile __u16 *p = port2adr(port);
 __u8 *ap = addr;

 while (count--)
  *ap++ = *p;
}
