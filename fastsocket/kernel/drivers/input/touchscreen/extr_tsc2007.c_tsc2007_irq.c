
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc2007 {int (* clear_penirq ) () ;int work; int irq; int (* get_pendown_state ) () ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TS_POLL_DELAY ;
 int disable_irq_nosync (int ) ;
 scalar_t__ likely (int ) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static irqreturn_t tsc2007_irq(int irq, void *handle)
{
 struct tsc2007 *ts = handle;

 if (!ts->get_pendown_state || likely(ts->get_pendown_state())) {
  disable_irq_nosync(ts->irq);
  schedule_delayed_work(&ts->work,
          msecs_to_jiffies(TS_POLL_DELAY));
 }

 if (ts->clear_penirq)
  ts->clear_penirq();

 return IRQ_HANDLED;
}
