
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MALTA_INT_BASE ;
 int do_IRQ (scalar_t__) ;
 int get_int () ;

__attribute__((used)) static void malta_hw0_irqdispatch(void)
{
 int irq;

 irq = get_int();
 if (irq < 0) {

  return;
 }

 do_IRQ(MALTA_INT_BASE + irq);
}
