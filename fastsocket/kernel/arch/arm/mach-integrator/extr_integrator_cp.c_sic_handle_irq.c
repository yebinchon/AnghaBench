
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 scalar_t__ INTCP_VA_SIC_BASE ;
 scalar_t__ IRQ_SIC_START ;
 scalar_t__ IRQ_STATUS ;
 int do_bad_IRQ (unsigned int,struct irq_desc*) ;
 unsigned int ffs (unsigned long) ;
 int generic_handle_irq (unsigned int) ;
 unsigned long sic_readl (scalar_t__) ;

__attribute__((used)) static void
sic_handle_irq(unsigned int irq, struct irq_desc *desc)
{
 unsigned long status = sic_readl(INTCP_VA_SIC_BASE + IRQ_STATUS);

 if (status == 0) {
  do_bad_IRQ(irq, desc);
  return;
 }

 do {
  irq = ffs(status) - 1;
  status &= ~(1 << irq);

  irq += IRQ_SIC_START;

  generic_handle_irq(irq);
 } while (status);
}
