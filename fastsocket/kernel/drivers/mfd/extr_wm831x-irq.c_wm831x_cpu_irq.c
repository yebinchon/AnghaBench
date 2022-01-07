
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int irq_work; int irq_wq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t wm831x_cpu_irq(int irq, void *data)
{
 struct wm831x *wm831x = data;



 disable_irq_nosync(irq);

 queue_work(wm831x->irq_wq, &wm831x->irq_work);

 return IRQ_HANDLED;
}
