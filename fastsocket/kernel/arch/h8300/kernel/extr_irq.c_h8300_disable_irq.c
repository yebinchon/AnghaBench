
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EXT_IRQ0 ;
 int IER_REGS ;
 scalar_t__ is_ext_irq (unsigned int) ;

__attribute__((used)) static void h8300_disable_irq(unsigned int irq)
{
 if (is_ext_irq(irq))
  IER_REGS &= ~(1 << (irq - EXT_IRQ0));
}
