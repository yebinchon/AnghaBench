
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSYSINT2REG ;
 int SYSINT2_IRQ_TO_PIN (unsigned int) ;
 int icu2_clear (int ,int) ;

__attribute__((used)) static void disable_sysint2_irq(unsigned int irq)
{
 icu2_clear(MSYSINT2REG, 1 << SYSINT2_IRQ_TO_PIN(irq));
}
