
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm831x {int irq_lock; int dev; } ;
typedef scalar_t__ irq_handler_t ;
struct TYPE_2__ {void* handler_data; scalar_t__ handler; } ;


 int EINVAL ;
 unsigned int WM831X_NUM_IRQS ;
 int __wm831x_enable_irq (struct wm831x*,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* wm831x_irqs ;

int wm831x_request_irq(struct wm831x *wm831x,
         unsigned int irq, irq_handler_t handler,
         unsigned long flags, const char *name,
         void *dev)
{
 int ret = 0;

 if (irq < 0 || irq >= WM831X_NUM_IRQS)
  return -EINVAL;

 mutex_lock(&wm831x->irq_lock);

 if (wm831x_irqs[irq].handler) {
  dev_err(wm831x->dev, "Already have handler for IRQ %d\n", irq);
  ret = -EINVAL;
  goto out;
 }

 wm831x_irqs[irq].handler = handler;
 wm831x_irqs[irq].handler_data = dev;

 __wm831x_enable_irq(wm831x, irq);

out:
 mutex_unlock(&wm831x->irq_lock);

 return ret;
}
