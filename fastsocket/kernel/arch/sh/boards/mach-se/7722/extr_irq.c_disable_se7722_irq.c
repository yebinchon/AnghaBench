
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ01_MASK ;
 unsigned int SE7722_FPGA_IRQ_BASE ;
 int ctrl_inw (int ) ;
 int ctrl_outw (int,int ) ;

__attribute__((used)) static void disable_se7722_irq(unsigned int irq)
{
 unsigned int bit = irq - SE7722_FPGA_IRQ_BASE;
 ctrl_outw(ctrl_inw(IRQ01_MASK) | 1 << bit, IRQ01_MASK);
}
