
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 scalar_t__ IRQ_SIC_START ;
 scalar_t__ SIC_IRQ_STATUS ;
 scalar_t__ VA_SIC_BASE ;
 int do_bad_IRQ (unsigned int,struct irq_desc*) ;
 unsigned int ffs (unsigned long) ;
 int generic_handle_irq (unsigned int) ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static void
sic_handle_irq(unsigned int irq, struct irq_desc *desc)
{
 unsigned long status = readl(VA_SIC_BASE + SIC_IRQ_STATUS);

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
