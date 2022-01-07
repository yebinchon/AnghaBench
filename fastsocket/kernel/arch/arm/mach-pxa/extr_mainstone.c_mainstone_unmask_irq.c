
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAINSTONE_IRQ (int ) ;
 int MST_INTMSKENA ;
 int MST_INTSETCLR ;
 int mainstone_irq_enabled ;

__attribute__((used)) static void mainstone_unmask_irq(unsigned int irq)
{
 int mainstone_irq = (irq - MAINSTONE_IRQ(0));

 MST_INTSETCLR &= ~(1 << mainstone_irq);
 MST_INTMSKENA = (mainstone_irq_enabled |= (1 << mainstone_irq));
}
