
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* port2adr (unsigned long) ;
 scalar_t__ shifted_port (unsigned long) ;

void se_outb(unsigned char value, unsigned long port)
{
 if (shifted_port(port))
  *(port2adr(port)) = value << 8;
 else
  *(port2adr(port)) = value;
}
