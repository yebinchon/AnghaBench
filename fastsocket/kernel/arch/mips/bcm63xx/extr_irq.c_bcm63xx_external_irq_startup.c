
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_MIPS_BASE ;
 int bcm63xx_external_irq_unmask (unsigned int) ;
 int irq_enable_hazard () ;
 int set_c0_status (int) ;

__attribute__((used)) static unsigned int bcm63xx_external_irq_startup(unsigned int irq)
{
 set_c0_status(0x100 << (irq - IRQ_MIPS_BASE));
 irq_enable_hazard();
 bcm63xx_external_irq_unmask(irq);
 return 0;
}
