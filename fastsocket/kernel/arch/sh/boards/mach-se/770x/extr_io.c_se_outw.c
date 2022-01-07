
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maybebadio (unsigned long) ;
 unsigned short* port2adr (unsigned long) ;

void se_outw(unsigned short value, unsigned long port)
{
 if (port >= 0x2000)
  *port2adr(port) = value;
 else
  maybebadio(port);
}
