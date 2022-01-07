
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PORT2ADDR (unsigned long) ;

void microdev_outsb(unsigned long port, const void *buffer, unsigned long count)
{
 volatile unsigned char *port_addr;
 const unsigned char *buf = buffer;

 port_addr = (volatile unsigned char *)PORT2ADDR(port);

 while (count--)
  *port_addr = *buf++;
}
