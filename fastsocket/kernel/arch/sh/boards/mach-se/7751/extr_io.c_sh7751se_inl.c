
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PXSEG (unsigned long) ;
 int maybebadio (unsigned long) ;
 unsigned int* port2adr (unsigned long) ;

unsigned int sh7751se_inl(unsigned long port)
{
        if (PXSEG(port))
                return *(volatile unsigned long *)port;
 else if (port >= 0x2000)
  return *port2adr(port);
 else
  maybebadio(port);
 return 0;
}
