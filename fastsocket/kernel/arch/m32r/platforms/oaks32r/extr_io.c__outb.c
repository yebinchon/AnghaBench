
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int PORT2ADDR_NE (unsigned long) ;
 int _ne_outb (unsigned char,int ) ;

void _outb(unsigned char b, unsigned long port)
{
 if (port >= 0x300 && port < 0x320)
  _ne_outb(b, PORT2ADDR_NE(port));
 else
  *(volatile unsigned char *)PORT2ADDR(port) = b;
}
