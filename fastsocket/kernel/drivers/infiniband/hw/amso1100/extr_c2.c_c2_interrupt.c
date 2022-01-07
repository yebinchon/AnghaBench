
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_dev {scalar_t__ regs; int netdev; } ;
typedef int irqreturn_t ;


 scalar_t__ C2_DISR ;
 scalar_t__ C2_NISR0 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int c2_rnic_interrupt (struct c2_dev*) ;
 int c2_rx_interrupt (int ) ;
 int c2_tx_interrupt (int ) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t c2_interrupt(int irq, void *dev_id)
{
 unsigned int netisr0, dmaisr;
 int handled = 0;
 struct c2_dev *c2dev = (struct c2_dev *) dev_id;


 netisr0 = readl(c2dev->regs + C2_NISR0);
 if (netisr0) {






  c2_rx_interrupt(c2dev->netdev);
  c2_tx_interrupt(c2dev->netdev);


  writel(netisr0, c2dev->regs + C2_NISR0);
  handled++;
 }


 dmaisr = readl(c2dev->regs + C2_DISR);
 if (dmaisr) {
  writel(dmaisr, c2dev->regs + C2_DISR);
  c2_rnic_interrupt(c2dev);
  handled++;
 }

 if (handled) {
  return IRQ_HANDLED;
 } else {
  return IRQ_NONE;
 }
}
