
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int irqreturn_t ;


 scalar_t__ IRQ_BASE_FPGA ;
 int IRQ_HANDLED ;
 int __get_IFR () ;
 int __get_IMR () ;
 int generic_handle_irq (scalar_t__) ;

__attribute__((used)) static irqreturn_t fpga_interrupt(int irq, void *_mask)
{
 uint16_t imr, mask = (unsigned long) _mask;

 imr = __get_IMR();
 mask = mask & ~imr & __get_IFR();


 while (mask) {
  int irq;

  asm("scan %1,gr0,%0" : "=r"(irq) : "r"(mask));
  irq = 31 - irq;
  mask &= ~(1 << irq);

  generic_handle_irq(IRQ_BASE_FPGA + irq);
 }

 return IRQ_HANDLED;
}
