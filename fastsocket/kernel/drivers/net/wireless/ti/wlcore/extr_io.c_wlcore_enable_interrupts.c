
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int irq; } ;


 int enable_irq (int ) ;

void wlcore_enable_interrupts(struct wl1271 *wl)
{
 enable_irq(wl->irq);
}
