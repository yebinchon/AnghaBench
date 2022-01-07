
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct fpga_irq {unsigned int base; unsigned short mask; int sraddr; } ;


 unsigned short ctrl_inw (int ) ;
 struct fpga_irq get_fpga_irq (unsigned int) ;
 int handle_level_irq (unsigned int,struct irq_desc*) ;
 struct irq_desc* irq_desc ;

__attribute__((used)) static void se7724_irq_demux(unsigned int irq, struct irq_desc *desc)
{
 struct fpga_irq set = get_fpga_irq(irq);
 unsigned short intv = ctrl_inw(set.sraddr);
 struct irq_desc *ext_desc;
 unsigned int ext_irq = set.base;

 intv &= set.mask;

 while (intv) {
  if (intv & 0x0001) {
   ext_desc = irq_desc + ext_irq;
   handle_level_irq(ext_irq, ext_desc);
  }
  intv >>= 1;
  ext_irq++;
 }
}
