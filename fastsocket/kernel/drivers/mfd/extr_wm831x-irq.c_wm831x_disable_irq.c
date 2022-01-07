
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int irq_lock; } ;


 int __wm831x_disable_irq (struct wm831x*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void wm831x_disable_irq(struct wm831x *wm831x, int irq)
{
 mutex_lock(&wm831x->irq_lock);
 __wm831x_disable_irq(wm831x, irq);
 mutex_unlock(&wm831x->irq_lock);
}
