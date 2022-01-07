
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PXSEG (unsigned long) ;
 int ctrl_delay () ;
 int* port2adr (unsigned long) ;

unsigned char snapgear_inb_p(unsigned long port)
{
 unsigned char v;

 if (PXSEG(port))
  v = *(volatile unsigned char *)port;
 else
  v = (*port2adr(port))&0xff;
 ctrl_delay();
 return v;
}
