
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int irq_work; int hw; } ;
struct sdio_func {int dummy; } ;


 int DEBUG_IRQ ;
 int ieee80211_queue_work (int ,int *) ;
 struct wl1251* sdio_get_drvdata (struct sdio_func*) ;
 int wl1251_debug (int ,char*) ;

__attribute__((used)) static void wl1251_sdio_interrupt(struct sdio_func *func)
{
 struct wl1251 *wl = sdio_get_drvdata(func);

 wl1251_debug(DEBUG_IRQ, "IRQ");


 ieee80211_queue_work(wl->hw, &wl->irq_work);
}
