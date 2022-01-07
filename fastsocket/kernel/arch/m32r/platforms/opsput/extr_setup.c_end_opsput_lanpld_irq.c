
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M32R_IRQ_INT0 ;
 int enable_opsput_lanpld_irq (unsigned int) ;
 int end_opsput_irq (int ) ;

__attribute__((used)) static void end_opsput_lanpld_irq(unsigned int irq)
{
 enable_opsput_lanpld_irq(irq);
 end_opsput_irq(M32R_IRQ_INT0);
}
