
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i8259a_enable_irq (unsigned int) ;

unsigned int
i8259a_startup_irq(unsigned int irq)
{
 i8259a_enable_irq(irq);
 return 0;
}
