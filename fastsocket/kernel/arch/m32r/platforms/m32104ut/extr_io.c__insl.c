
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* PORT2ADDR (unsigned int) ;

void _insl(unsigned int port, void *addr, unsigned long count)
{
 unsigned long *buf = addr;
 unsigned long *portp;

 portp = PORT2ADDR(port);
 while (count--)
  *buf++ = *(volatile unsigned long *)portp;
}
