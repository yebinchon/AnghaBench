
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* port2adr (unsigned long) ;

unsigned char se7206_inb(unsigned long port)
{
 return (*port2adr(port)) & 0xff;
}
