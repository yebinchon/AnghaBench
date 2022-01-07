
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_irq {unsigned int base; int mraddr; } ;


 int ctrl_inw (int ) ;
 int ctrl_outw (int,int ) ;
 int fpga2irq (unsigned int) ;
 struct fpga_irq get_fpga_irq (int ) ;

__attribute__((used)) static void enable_se7724_irq(unsigned int irq)
{
 struct fpga_irq set = get_fpga_irq(fpga2irq(irq));
 unsigned int bit = irq - set.base;
 ctrl_outw(ctrl_inw(set.mraddr) & ~(0x0001 << bit), set.mraddr);
}
