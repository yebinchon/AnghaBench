
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc2007 {int irq; int work; } ;


 scalar_t__ cancel_delayed_work_sync (int *) ;
 int enable_irq (int ) ;
 int free_irq (int ,struct tsc2007*) ;

__attribute__((used)) static void tsc2007_free_irq(struct tsc2007 *ts)
{
 free_irq(ts->irq, ts);
 if (cancel_delayed_work_sync(&ts->work)) {





  enable_irq(ts->irq);
 }
}
