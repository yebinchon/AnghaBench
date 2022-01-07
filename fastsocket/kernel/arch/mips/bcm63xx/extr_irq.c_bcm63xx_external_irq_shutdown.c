
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_MIPS_BASE ;
 int bcm63xx_external_irq_mask (unsigned int) ;
 int clear_c0_status (int) ;
 int irq_disable_hazard () ;

__attribute__((used)) static void bcm63xx_external_irq_shutdown(unsigned int irq)
{
 bcm63xx_external_irq_mask(irq);
 clear_c0_status(0x100 << (irq - IRQ_MIPS_BASE));
 irq_disable_hazard();
}
