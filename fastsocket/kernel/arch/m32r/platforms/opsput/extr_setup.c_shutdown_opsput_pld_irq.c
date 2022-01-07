
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLD_ICUCR_ILEVEL7 ;
 unsigned int irq2pldirq (unsigned int) ;
 int outw (int ,unsigned long) ;
 unsigned long pldirq2port (unsigned int) ;

__attribute__((used)) static void shutdown_opsput_pld_irq(unsigned int irq)
{
 unsigned long port;
 unsigned int pldirq;

 pldirq = irq2pldirq(irq);

 port = pldirq2port(pldirq);
 outw(PLD_ICUCR_ILEVEL7, port);
}
