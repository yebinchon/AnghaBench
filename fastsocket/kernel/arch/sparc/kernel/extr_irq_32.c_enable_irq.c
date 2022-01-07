
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __enable_irq (unsigned int) ;

void enable_irq(unsigned int irq)
{
 __enable_irq(irq);
}
