
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_on {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t wm831x_on_irq(int irq, void *data)
{
 struct wm831x_on *wm831x_on = data;

 schedule_delayed_work(&wm831x_on->work, 0);

 return IRQ_HANDLED;
}
