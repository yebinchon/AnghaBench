
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_hardware {scalar_t__ hw_version; int irq; scalar_t__ base_port; } ;


 scalar_t__ HW_VERSION_1 ;
 scalar_t__ IOIER ;
 scalar_t__ IOIR ;
 unsigned int IR_RXINTR ;
 unsigned int IR_TXINTR ;
 unsigned int inw (scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void do_close_hardware(struct ipw_hardware *hw)
{
 unsigned int irqn;

 if (hw->hw_version == HW_VERSION_1) {

  outw(0, hw->base_port + IOIER);


  irqn = inw(hw->base_port + IOIR);
  if (irqn & IR_TXINTR)
   outw(IR_TXINTR, hw->base_port + IOIR);
  if (irqn & IR_RXINTR)
   outw(IR_RXINTR, hw->base_port + IOIR);

  synchronize_irq(hw->irq);
 }
}
