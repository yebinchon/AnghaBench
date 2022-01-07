
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int irq; int dev; scalar_t__ irq_wake_enabled; int initialized; int nvs_loading_complete; } ;
struct platform_device {int dummy; } ;


 int device_init_wakeup (int ,int ) ;
 int disable_irq_wake (int ) ;
 int free_irq (int ,struct wl1271*) ;
 struct wl1271* platform_get_drvdata (struct platform_device*) ;
 int wait_for_completion (int *) ;
 int wl1271_unregister_hw (struct wl1271*) ;
 int wlcore_free_hw (struct wl1271*) ;

int wlcore_remove(struct platform_device *pdev)
{
 struct wl1271 *wl = platform_get_drvdata(pdev);

 wait_for_completion(&wl->nvs_loading_complete);
 if (!wl->initialized)
  return 0;

 if (wl->irq_wake_enabled) {
  device_init_wakeup(wl->dev, 0);
  disable_irq_wake(wl->irq);
 }
 wl1271_unregister_hw(wl);
 free_irq(wl->irq, wl);
 wlcore_free_hw(wl);

 return 0;
}
