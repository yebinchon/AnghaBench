
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int PORT2ADDR_NE (unsigned long) ;
 int _ne_outw (unsigned short,int ) ;

void _outw(unsigned short w, unsigned long port)
{
 if (port >= 0x300 && port < 0x320)
  _ne_outw(w, PORT2ADDR_NE(port));
 else
  *(volatile unsigned short *)PORT2ADDR(port) = w;
}
