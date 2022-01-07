
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMR ;

__attribute__((used)) static void intc_irq_unmask(unsigned int irq)
{
 IMR &= ~(1<<irq);
}
