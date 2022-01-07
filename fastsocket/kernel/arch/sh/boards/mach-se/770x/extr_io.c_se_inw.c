
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maybebadio (unsigned long) ;
 unsigned short* port2adr (unsigned long) ;

unsigned short se_inw(unsigned long port)
{
 if (port >= 0x2000)
  return *port2adr(port);
 else
  maybebadio(port);
 return 0;
}
