
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_irq {int devid; int (* fn ) (unsigned int,int ) ;} ;
struct ucb1x00 {struct ucb1x00_irq* irq_handler; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int UCB_IE_CLEAR ;
 int UCB_IE_STATUS ;
 int stub1 (unsigned int,int ) ;
 int ucb1x00_disable (struct ucb1x00*) ;
 int ucb1x00_enable (struct ucb1x00*) ;
 unsigned int ucb1x00_reg_read (struct ucb1x00*,int ) ;
 int ucb1x00_reg_write (struct ucb1x00*,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t ucb1x00_irq(int irqnr, void *devid)
{
 struct ucb1x00 *ucb = devid;
 struct ucb1x00_irq *irq;
 unsigned int isr, i;

 ucb1x00_enable(ucb);
 isr = ucb1x00_reg_read(ucb, UCB_IE_STATUS);
 ucb1x00_reg_write(ucb, UCB_IE_CLEAR, isr);
 ucb1x00_reg_write(ucb, UCB_IE_CLEAR, 0);

 for (i = 0, irq = ucb->irq_handler; i < 16 && isr; i++, isr >>= 1, irq++)
  if (isr & 1 && irq->fn)
   irq->fn(i, irq->devid);
 ucb1x00_disable(ucb);

 return IRQ_HANDLED;
}
