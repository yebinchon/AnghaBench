
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLD_ICUCR_ILEVEL7 ;
 unsigned int irq2lanpldirq (unsigned int) ;
 unsigned long lanpldirq2port (unsigned int) ;
 int outw (int ,unsigned long) ;

__attribute__((used)) static void shutdown_opsput_lanpld_irq(unsigned int irq)
{
 unsigned long port;
 unsigned int pldirq;

 pldirq = irq2lanpldirq(irq);
 port = lanpldirq2port(pldirq);
 outw(PLD_ICUCR_ILEVEL7, port);
}
