
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7879 {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;
 int work_pending (int *) ;

__attribute__((used)) static irqreturn_t ad7879_irq(int irq, void *handle)
{
 struct ad7879 *ts = handle;






 if (!work_pending(&ts->work))
  schedule_work(&ts->work);

 return IRQ_HANDLED;
}
