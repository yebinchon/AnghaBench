
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LUBBOCK_IRQ (int ) ;
 int LUB_IRQ_MASK_EN ;
 int LUB_IRQ_SET_CLR ;
 int lubbock_irq_enabled ;

__attribute__((used)) static void lubbock_unmask_irq(unsigned int irq)
{
 int lubbock_irq = (irq - LUBBOCK_IRQ(0));

 LUB_IRQ_SET_CLR &= ~(1 << lubbock_irq);
 LUB_IRQ_MASK_EN = (lubbock_irq_enabled |= (1 << lubbock_irq));
}
