
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctrl_delay () ;
 int* port2adr (unsigned long) ;
 scalar_t__ shifted_port (unsigned long) ;

unsigned char se_inb_p(unsigned long port)
{
 unsigned long v;

 if (shifted_port(port))
  v = (*port2adr(port) >> 8);
 else
  v = (*port2adr(port))&0xff;
 ctrl_delay();
 return v;
}
