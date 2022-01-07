
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int HZ ;
 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int schedule_delayed_work (int *,int) ;
 int work ;

__attribute__((used)) static irqreturn_t hp680_ts_interrupt(int irq, void *dev)
{
 disable_irq_nosync(irq);
 schedule_delayed_work(&work, HZ / 20);

 return IRQ_HANDLED;
}
