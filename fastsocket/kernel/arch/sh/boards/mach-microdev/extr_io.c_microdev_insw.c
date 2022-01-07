
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PORT2ADDR (unsigned long) ;

void microdev_insw(unsigned long port, void *buffer, unsigned long count)
{
 volatile unsigned short *port_addr;
 unsigned short *buf = buffer;

 port_addr = (volatile unsigned short *)PORT2ADDR(port);

 while (count--)
  *buf++ = *port_addr;
}
