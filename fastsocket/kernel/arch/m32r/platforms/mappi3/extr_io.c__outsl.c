
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* PORT2ADDR (unsigned int) ;

void _outsl(unsigned int port, const void * addr, unsigned long count)
{
 const unsigned long *buf = addr;
 unsigned char *portp;

 portp = PORT2ADDR(port);
 while (count--)
  *(volatile unsigned long *)portp = *buf++;
}
