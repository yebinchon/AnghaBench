
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_AMIGA_CIAA ;
 unsigned int IRQ_AMIGA_CIAB ;
 int cia_able_irq (int *,int) ;
 int ciaa_base ;
 int ciab_base ;

__attribute__((used)) static void cia_disable_irq(unsigned int irq)
{
 if (irq >= IRQ_AMIGA_CIAB)
  cia_able_irq(&ciab_base, 1 << (irq - IRQ_AMIGA_CIAB));
 else
  cia_able_irq(&ciaa_base, 1 << (irq - IRQ_AMIGA_CIAA));
}
