
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PXSEG (unsigned long) ;
 int* port2adr (unsigned long) ;

unsigned char snapgear_inb(unsigned long port)
{
 if (PXSEG(port))
  return *(volatile unsigned char *)port;
 else
  return (*port2adr(port)) & 0xff;
}
