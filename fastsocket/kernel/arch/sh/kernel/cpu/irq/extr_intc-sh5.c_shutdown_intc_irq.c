
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_intc_irq (unsigned int) ;

__attribute__((used)) static void shutdown_intc_irq(unsigned int irq)
{
 disable_intc_irq(irq);
}
