
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HD64461_IRQBASE ;
 int HD64461_PCC1CSCR ;
 int __raw_writeb (int,int ) ;
 int hd64461_mask_irq (unsigned int) ;

__attribute__((used)) static void hd64461_mask_and_ack_irq(unsigned int irq)
{
 hd64461_mask_irq(irq);




}
