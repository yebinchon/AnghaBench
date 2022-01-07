
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* unmask ) (unsigned int) ;int (* ack ) (unsigned int) ;} ;


 int* IXDP2351_CPLD_INTB_STAT_REG ;
 scalar_t__ IXDP2351_INTB_IRQ_BASE ;
 int IXDP2351_INTB_IRQ_NUM ;
 int IXDP2351_INTB_IRQ_VALID ;
 int IXP23XX_MACH_IRQ (scalar_t__) ;
 int generic_handle_irq (int) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;

__attribute__((used)) static void ixdp2351_intb_handler(unsigned int irq, struct irq_desc *desc)
{
 u16 ex_interrupt =
  *IXDP2351_CPLD_INTB_STAT_REG & IXDP2351_INTB_IRQ_VALID;
 int i;

 desc->chip->ack(irq);

 for (i = 0; i < IXDP2351_INTB_IRQ_NUM; i++) {
  if (ex_interrupt & (1 << i)) {
   int cpld_irq =
    IXP23XX_MACH_IRQ(IXDP2351_INTB_IRQ_BASE + i);
   generic_handle_irq(cpld_irq);
  }
 }

 desc->chip->unmask(irq);
}
