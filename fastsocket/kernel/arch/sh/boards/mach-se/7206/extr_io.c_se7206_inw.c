
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* port2adr (unsigned long) ;

unsigned short se7206_inw(unsigned long port)
{
 return *port2adr(port);
}
