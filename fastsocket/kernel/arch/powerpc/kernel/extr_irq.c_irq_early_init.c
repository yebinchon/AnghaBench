
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int IRQ_NOREQUEST ;
 unsigned int NR_IRQS ;
 TYPE_1__* get_irq_desc (unsigned int) ;

void irq_early_init(void)
{
 unsigned int i;

 for (i = 0; i < NR_IRQS; i++)
  get_irq_desc(i)->status |= IRQ_NOREQUEST;
}
