
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EXT_IRQ0 ;
 unsigned int EXT_IRQS ;

__attribute__((used)) static inline int is_ext_irq(unsigned int irq)
{
 return (irq >= EXT_IRQ0 && irq <= (EXT_IRQ0 + EXT_IRQS));
}
