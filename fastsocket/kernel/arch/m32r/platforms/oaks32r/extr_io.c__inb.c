
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int PORT2ADDR_NE (unsigned long) ;
 unsigned char _ne_inb (int ) ;

unsigned char _inb(unsigned long port)
{
 if (port >= 0x300 && port < 0x320)
  return _ne_inb(PORT2ADDR_NE(port));

 return *(volatile unsigned char *)PORT2ADDR(port);
}
