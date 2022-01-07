
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long icucr; } ;


 unsigned long PLD_ICUCR_ILEVEL7 ;
 unsigned int irq2pldirq (unsigned int) ;
 int outw (unsigned long,unsigned long) ;
 TYPE_1__* pld_icu_data ;
 unsigned long pldirq2port (unsigned int) ;

__attribute__((used)) static void disable_opsput_pld_irq(unsigned int irq)
{
 unsigned long port, data;
 unsigned int pldirq;

 pldirq = irq2pldirq(irq);

 port = pldirq2port(pldirq);
 data = pld_icu_data[pldirq].icucr|PLD_ICUCR_ILEVEL7;
 outw(data, port);
}
