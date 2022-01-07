
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _intc_enable (unsigned int,unsigned long) ;
 scalar_t__ get_irq_chip_data (unsigned int) ;

__attribute__((used)) static void intc_enable(unsigned int irq)
{
 _intc_enable(irq, (unsigned long)get_irq_chip_data(irq));
}
