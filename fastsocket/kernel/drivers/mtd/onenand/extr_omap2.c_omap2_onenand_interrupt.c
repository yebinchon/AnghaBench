
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap2_onenand {int irq_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t omap2_onenand_interrupt(int irq, void *dev_id)
{
 struct omap2_onenand *c = dev_id;

 complete(&c->irq_done);

 return IRQ_HANDLED;
}
