
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_irq ) (unsigned int) ;} ;


 int EINVAL ;
 unsigned int NR_IRQS ;
 int cascade_irqaction ;
 int free_irq (unsigned int,int *) ;
 TYPE_1__* irq_cascade ;
 int setup_irq (unsigned int,int *) ;

int cascade_irq(unsigned int irq, int (*get_irq)(unsigned int))
{
 int retval = 0;

 if (irq >= NR_IRQS)
  return -EINVAL;

 if (irq_cascade[irq].get_irq != ((void*)0))
  free_irq(irq, ((void*)0));

 irq_cascade[irq].get_irq = get_irq;

 if (get_irq != ((void*)0)) {
  retval = setup_irq(irq, &cascade_irqaction);
  if (retval < 0)
   irq_cascade[irq].get_irq = ((void*)0);
 }

 return retval;
}
