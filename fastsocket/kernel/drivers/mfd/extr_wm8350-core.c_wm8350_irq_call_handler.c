
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8350 {int irq_mutex; int dev; TYPE_1__* irq; } ;
struct TYPE_2__ {int data; int (* handler ) (struct wm8350*,int,int ) ;} ;


 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wm8350*,int,int ) ;
 int wm8350_mask_irq (struct wm8350*,int) ;

__attribute__((used)) static void wm8350_irq_call_handler(struct wm8350 *wm8350, int irq)
{
 mutex_lock(&wm8350->irq_mutex);

 if (wm8350->irq[irq].handler)
  wm8350->irq[irq].handler(wm8350, irq, wm8350->irq[irq].data);
 else {
  dev_err(wm8350->dev, "irq %d nobody cared. now masked.\n",
   irq);
  wm8350_mask_irq(wm8350, irq);
 }

 mutex_unlock(&wm8350->irq_mutex);
}
