
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long icucr; } ;


 unsigned long PLD_ICUCR_IEN ;
 unsigned long PLD_ICUCR_ILEVEL6 ;
 unsigned int irq2lanpldirq (unsigned int) ;
 TYPE_1__* lanpld_icu_data ;
 unsigned long lanpldirq2port (unsigned int) ;
 int outw (unsigned long,unsigned long) ;

__attribute__((used)) static void enable_m32700ut_lanpld_irq(unsigned int irq)
{
 unsigned long port, data;
 unsigned int pldirq;

 pldirq = irq2lanpldirq(irq);
 port = lanpldirq2port(pldirq);
 data = lanpld_icu_data[pldirq].icucr|PLD_ICUCR_IEN|PLD_ICUCR_ILEVEL6;
 outw(data, port);
}
