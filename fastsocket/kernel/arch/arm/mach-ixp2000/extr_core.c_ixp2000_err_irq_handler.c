
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 scalar_t__ IRQ_IXP2000_DRAM0_MIN_ERR ;
 unsigned long* IXP2000_IRQ_ERR_STATUS ;
 int generic_handle_irq (scalar_t__) ;

__attribute__((used)) static void ixp2000_err_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 int i;
 unsigned long status = *IXP2000_IRQ_ERR_STATUS;

 for(i = 31; i >= 0; i--) {
  if(status & (1 << i)) {
   generic_handle_irq(IRQ_IXP2000_DRAM0_MIN_ERR + i);
  }
 }
}
