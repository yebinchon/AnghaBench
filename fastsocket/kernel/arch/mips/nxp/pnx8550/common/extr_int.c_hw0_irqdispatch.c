
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PNX8550_GIC_VECTOR_0 ;
 scalar_t__ PNX8550_INT_GIC_MIN ;
 int do_IRQ (scalar_t__) ;
 int printk (char*) ;

__attribute__((used)) static void hw0_irqdispatch(int irq)
{

 irq = PNX8550_GIC_VECTOR_0 >> 3;

 if (irq == 0) {
  printk("hw0_irqdispatch: irq 0, spurious interrupt?\n");
  return;
 }
 do_IRQ(PNX8550_INT_GIC_MIN + irq);
}
