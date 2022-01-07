
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_chip {int dummy; } ;


 unsigned int AU1000_INTC0_INT_BASE ;
 unsigned int AU1000_INTC1_INT_BASE ;
 int EINVAL ;
 unsigned long IC0_CFG0CLR ;
 unsigned long IC0_CFG0SET ;
 unsigned long IC0_CFG1CLR ;
 unsigned long IC0_CFG1SET ;
 unsigned long IC0_CFG2CLR ;
 unsigned long IC0_CFG2SET ;
 unsigned long IC1_CFG0CLR ;
 unsigned long IC1_CFG0SET ;
 unsigned long IC1_CFG1CLR ;
 unsigned long IC1_CFG1SET ;
 unsigned long IC1_CFG2CLR ;
 unsigned long IC1_CFG2SET ;






 struct irq_chip au1x_ic0_chip ;
 struct irq_chip au1x_ic1_chip ;
 int au_sync () ;
 int au_writel (int,unsigned long) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int set_irq_chip (unsigned int,struct irq_chip*) ;
 int set_irq_chip_and_handler_name (unsigned int,struct irq_chip*,int ,char*) ;

__attribute__((used)) static int au1x_ic_settype(unsigned int irq, unsigned int flow_type)
{
 struct irq_chip *chip;
 unsigned long icr[6];
 unsigned int bit, ic;
 int ret;

 if (irq >= AU1000_INTC1_INT_BASE) {
  bit = irq - AU1000_INTC1_INT_BASE;
  chip = &au1x_ic1_chip;
  ic = 1;
 } else {
  bit = irq - AU1000_INTC0_INT_BASE;
  chip = &au1x_ic0_chip;
  ic = 0;
 }

 if (bit > 31)
  return -EINVAL;

 icr[0] = ic ? IC1_CFG0SET : IC0_CFG0SET;
 icr[1] = ic ? IC1_CFG1SET : IC0_CFG1SET;
 icr[2] = ic ? IC1_CFG2SET : IC0_CFG2SET;
 icr[3] = ic ? IC1_CFG0CLR : IC0_CFG0CLR;
 icr[4] = ic ? IC1_CFG1CLR : IC0_CFG1CLR;
 icr[5] = ic ? IC1_CFG2CLR : IC0_CFG2CLR;

 ret = 0;

 switch (flow_type) {
 case 131:
  au_writel(1 << bit, icr[5]);
  au_writel(1 << bit, icr[4]);
  au_writel(1 << bit, icr[0]);
  set_irq_chip_and_handler_name(irq, chip,
    handle_edge_irq, "riseedge");
  break;
 case 132:
  au_writel(1 << bit, icr[5]);
  au_writel(1 << bit, icr[1]);
  au_writel(1 << bit, icr[3]);
  set_irq_chip_and_handler_name(irq, chip,
    handle_edge_irq, "falledge");
  break;
 case 133:
  au_writel(1 << bit, icr[5]);
  au_writel(1 << bit, icr[1]);
  au_writel(1 << bit, icr[0]);
  set_irq_chip_and_handler_name(irq, chip,
    handle_edge_irq, "bothedge");
  break;
 case 130:
  au_writel(1 << bit, icr[2]);
  au_writel(1 << bit, icr[4]);
  au_writel(1 << bit, icr[0]);
  set_irq_chip_and_handler_name(irq, chip,
    handle_level_irq, "hilevel");
  break;
 case 129:
  au_writel(1 << bit, icr[2]);
  au_writel(1 << bit, icr[1]);
  au_writel(1 << bit, icr[3]);
  set_irq_chip_and_handler_name(irq, chip,
    handle_level_irq, "lowlevel");
  break;
 case 128:
  au_writel(1 << bit, icr[5]);
  au_writel(1 << bit, icr[4]);
  au_writel(1 << bit, icr[3]);

  set_irq_chip(irq, chip);
  break;
 default:
  ret = -EINVAL;
 }
 au_sync();

 return ret;
}
