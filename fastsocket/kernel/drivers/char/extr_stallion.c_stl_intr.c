
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlbrd {int (* isr ) (struct stlbrd*) ;int irq; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int ) ;
 int pr_debug (char*,struct stlbrd*,int ) ;
 int stub1 (struct stlbrd*) ;

__attribute__((used)) static irqreturn_t stl_intr(int irq, void *dev_id)
{
 struct stlbrd *brdp = dev_id;

 pr_debug("stl_intr(brdp=%p,irq=%d)\n", brdp, brdp->irq);

 return IRQ_RETVAL((* brdp->isr)(brdp));
}
