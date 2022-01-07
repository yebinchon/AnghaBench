
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (void*) ;
 int disable_irq_nosync (int) ;

__attribute__((used)) static irqreturn_t handle_twl4030_pih(int irq, void *devid)
{

 disable_irq_nosync(irq);
 complete(devid);
 return IRQ_HANDLED;
}
