
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SMC_IOADDR ;
 int maybebadio (unsigned long) ;

__attribute__((used)) static unsigned long sh_edosk7705_isa_port2addr(unsigned long port)
{




 if (port >= 0x300 && port < 0x320)
  return SMC_IOADDR + ((port - 0x300) * 2);

 maybebadio(port);
 return port;
}
