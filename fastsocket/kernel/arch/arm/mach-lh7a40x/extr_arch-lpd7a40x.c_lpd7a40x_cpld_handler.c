
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* unmask ) (unsigned int) ;int (* ack ) (unsigned int) ;} ;


 unsigned int CPLD_INTERRUPTS ;
 int IRQ_LPD7A40X_ETH_INT ;
 int IRQ_TOUCH ;
 int generic_handle_irq (int ) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;

__attribute__((used)) static void lpd7a40x_cpld_handler (unsigned int irq, struct irq_desc *desc)
{
 unsigned int mask = CPLD_INTERRUPTS;

 desc->chip->ack (irq);

 if ((mask & (1<<0)) == 0)
  generic_handle_irq(IRQ_LPD7A40X_ETH_INT);






 desc->chip->unmask (irq);
}
