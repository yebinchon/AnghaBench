
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcm63xx_internal_irq_unmask (unsigned int) ;

__attribute__((used)) static unsigned int bcm63xx_internal_irq_startup(unsigned int irq)
{
 bcm63xx_internal_irq_unmask(irq);
 return 0;
}
