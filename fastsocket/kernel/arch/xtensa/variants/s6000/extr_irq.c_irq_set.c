
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INTC_CFG (char const) ;
 scalar_t__ S6_REG_INTC ;
 char** platform_irq_mappings ;
 unsigned long* scp_to_intc_enable ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void irq_set(unsigned int irq, int enable)
{
 unsigned long en;
 const signed char *m = platform_irq_mappings[irq];

 if (!m)
  return;
 en = enable ? scp_to_intc_enable[irq] : 0;
 while (*m >= 0) {
  writel(en, S6_REG_INTC + INTC_CFG(*m));
  m++;
 }
}
