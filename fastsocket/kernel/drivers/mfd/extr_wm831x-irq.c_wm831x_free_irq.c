
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm831x {int irq_lock; } ;
struct TYPE_2__ {int * handler_data; int * handler; } ;


 unsigned int WM831X_NUM_IRQS ;
 int __wm831x_disable_irq (struct wm831x*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* wm831x_irqs ;

void wm831x_free_irq(struct wm831x *wm831x, unsigned int irq, void *data)
{
 if (irq < 0 || irq >= WM831X_NUM_IRQS)
  return;

 mutex_lock(&wm831x->irq_lock);

 wm831x_irqs[irq].handler = ((void*)0);
 wm831x_irqs[irq].handler_data = ((void*)0);

 __wm831x_disable_irq(wm831x, irq);

 mutex_unlock(&wm831x->irq_lock);
}
