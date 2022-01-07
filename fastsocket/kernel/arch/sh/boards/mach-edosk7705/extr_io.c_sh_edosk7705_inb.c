
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char __raw_readb (int ) ;
 int __raw_readw (unsigned long) ;
 int sh_edosk7705_isa_port2addr (unsigned long) ;

unsigned char sh_edosk7705_inb(unsigned long port)
{
 if (port >= 0x300 && port < 0x320 && port & 0x01)
  return __raw_readw(port - 1) >> 8;

 return __raw_readb(sh_edosk7705_isa_port2addr(port));
}
