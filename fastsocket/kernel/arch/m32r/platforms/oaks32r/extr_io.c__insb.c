
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* PORT2ADDR (unsigned int) ;
 int PORT2ADDR_NE (unsigned int) ;
 int _ne_insb (int ,void*,unsigned long) ;

void _insb(unsigned int port, void *addr, unsigned long count)
{
 if (port >= 0x300 && port < 0x320)
  _ne_insb(PORT2ADDR_NE(port), addr, count);
 else {
  unsigned char *buf = addr;
  unsigned char *portp = PORT2ADDR(port);
  while (count--)
   *buf++ = *(volatile unsigned char *)portp;
 }
}
