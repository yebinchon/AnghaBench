
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8350 {int irq_mutex; TYPE_1__* irq; } ;
struct TYPE_2__ {void (* handler ) (struct wm8350*,int,void*) ;void* data; } ;


 int EBUSY ;
 int EINVAL ;
 int WM8350_NUM_IRQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int wm8350_register_irq(struct wm8350 *wm8350, int irq,
   void (*handler) (struct wm8350 *, int, void *),
   void *data)
{
 if (irq < 0 || irq > WM8350_NUM_IRQ || !handler)
  return -EINVAL;

 if (wm8350->irq[irq].handler)
  return -EBUSY;

 mutex_lock(&wm8350->irq_mutex);
 wm8350->irq[irq].handler = handler;
 wm8350->irq[irq].data = data;
 mutex_unlock(&wm8350->irq_mutex);

 return 0;
}
