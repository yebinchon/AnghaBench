
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PXSEG (unsigned long) ;
 int maybebadio (unsigned long) ;
 unsigned short* port2adr (unsigned long) ;

void snapgear_outw(unsigned short value, unsigned long port)
{
 if (PXSEG(port))
  *(volatile unsigned short *)port = value;
 else if (port >= 0x2000)
  *port2adr(port) = value;
 else
  maybebadio(port);
}
