
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int PORT2ADDR_NE (unsigned long) ;
 unsigned short _ne_inw (int ) ;

unsigned short _inw(unsigned long port)
{
 if (port >= 0x300 && port < 0x320)
  return _ne_inw(PORT2ADDR_NE(port));

 return *(volatile unsigned short *)PORT2ADDR(port);
}
