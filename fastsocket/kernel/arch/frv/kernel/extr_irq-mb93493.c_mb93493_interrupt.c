
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int irqreturn_t ;


 scalar_t__ IRQ_BASE_MB93493 ;
 int IRQ_HANDLED ;
 int generic_handle_irq (scalar_t__) ;
 int readl (void volatile*) ;

__attribute__((used)) static irqreturn_t mb93493_interrupt(int irq, void *_piqsr)
{
 volatile void *piqsr = _piqsr;
 uint32_t iqsr;

 iqsr = readl(piqsr);
 iqsr = iqsr & (iqsr >> 16) & 0xffff;


 while (iqsr) {
  int irq;

  asm("scan %1,gr0,%0" : "=r"(irq) : "r"(iqsr));
  irq = 31 - irq;
  iqsr &= ~(1 << irq);

  generic_handle_irq(IRQ_BASE_MB93493 + irq);
 }

 return IRQ_HANDLED;
}
