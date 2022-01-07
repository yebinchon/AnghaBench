
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* sun3_intreg ;

void sun3_disable_irq(unsigned int irq)
{
 *sun3_intreg &= ~(1 << irq);
}
