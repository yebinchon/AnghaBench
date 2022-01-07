
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSYSINT1REG ;
 int SYSINT1_IRQ_TO_PIN (unsigned int) ;
 int icu1_set (int ,int) ;

__attribute__((used)) static void enable_sysint1_irq(unsigned int irq)
{
 icu1_set(MSYSINT1REG, 1 << SYSINT1_IRQ_TO_PIN(irq));
}
