
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PXSEG (unsigned long) ;
 int maybebadio (unsigned long) ;
 unsigned short* port2adr (unsigned long) ;

unsigned short sh7751se_inw(unsigned long port)
{
        if (PXSEG(port))
                return *(volatile unsigned short *)port;
 else if (port >= 0x2000)
  return *port2adr(port);
 else
  maybebadio(port);
 return 0;
}
