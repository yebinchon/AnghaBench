
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* port2adr (unsigned long) ;

void se7206_outw(unsigned short value, unsigned long port)
{
 *port2adr(port) = value;
}
