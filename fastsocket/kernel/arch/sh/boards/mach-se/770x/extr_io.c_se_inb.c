
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* port2adr (unsigned long) ;
 scalar_t__ shifted_port (unsigned long) ;

unsigned char se_inb(unsigned long port)
{
 if (shifted_port(port))
  return (*port2adr(port) >> 8);
 else
  return (*port2adr(port))&0xff;
}
