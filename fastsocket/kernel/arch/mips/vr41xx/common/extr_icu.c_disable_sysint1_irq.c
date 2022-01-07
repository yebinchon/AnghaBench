
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSYSINT1REG ;
 int SYSINT1_IRQ_TO_PIN (unsigned int) ;
 int icu1_clear (int ,int) ;

__attribute__((used)) static void disable_sysint1_irq(unsigned int irq)
{
 icu1_clear(MSYSINT1REG, 1 << SYSINT1_IRQ_TO_PIN(irq));
}
