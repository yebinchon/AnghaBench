
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay () ;
 int* port2adr (unsigned long) ;

unsigned char se7206_inb_p(unsigned long port)
{
 unsigned long v;

 v = (*port2adr(port)) & 0xff;
 delay();
 return v;
}
