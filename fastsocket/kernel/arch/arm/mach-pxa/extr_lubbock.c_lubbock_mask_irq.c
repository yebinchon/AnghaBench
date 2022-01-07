
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LUBBOCK_IRQ (int ) ;
 int LUB_IRQ_MASK_EN ;
 int lubbock_irq_enabled ;

__attribute__((used)) static void lubbock_mask_irq(unsigned int irq)
{
 int lubbock_irq = (irq - LUBBOCK_IRQ(0));
 LUB_IRQ_MASK_EN = (lubbock_irq_enabled &= ~(1 << lubbock_irq));
}
