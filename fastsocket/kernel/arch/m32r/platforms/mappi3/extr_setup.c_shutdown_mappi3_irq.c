
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M32R_ICUCR_ILEVEL7 ;
 unsigned long irq2port (unsigned int) ;
 int outl (int ,unsigned long) ;

__attribute__((used)) static void shutdown_mappi3_irq(unsigned int irq)
{
 unsigned long port;

 port = irq2port(irq);
 outl(M32R_ICUCR_ILEVEL7, port);
}
