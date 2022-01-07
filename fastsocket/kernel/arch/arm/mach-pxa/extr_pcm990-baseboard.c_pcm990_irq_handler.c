
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
typedef int GEDR ;


 int GPIO_bit (int ) ;
 unsigned int PCM027_IRQ (int ) ;
 int PCM990_CTRL_INT_IRQ_GPIO ;
 unsigned long PCM990_INTSETCLR ;
 unsigned int __ffs (unsigned long) ;
 int generic_handle_irq (unsigned int) ;
 scalar_t__ likely (unsigned long) ;
 unsigned long pcm990_irq_enabled ;

__attribute__((used)) static void pcm990_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 unsigned long pending = (~PCM990_INTSETCLR) & pcm990_irq_enabled;

 do {
  GEDR(PCM990_CTRL_INT_IRQ_GPIO) =
     GPIO_bit(PCM990_CTRL_INT_IRQ_GPIO);
  if (likely(pending)) {
   irq = PCM027_IRQ(0) + __ffs(pending);
   generic_handle_irq(irq);
  }
  pending = (~PCM990_INTSETCLR) & pcm990_irq_enabled;
 } while (pending);
}
