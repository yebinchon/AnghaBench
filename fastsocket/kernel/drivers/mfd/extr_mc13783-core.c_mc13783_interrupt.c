
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13783 {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t mc13783_interrupt(int irq, void *dev_id)
{
 struct mc13783 *mc13783 = dev_id;

 disable_irq_nosync(irq);

 schedule_work(&mc13783->work);
 return IRQ_HANDLED;
}
