
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_set (unsigned int,int) ;

void variant_irq_enable(unsigned int irq)
{
 irq_set(irq, 1);
}
