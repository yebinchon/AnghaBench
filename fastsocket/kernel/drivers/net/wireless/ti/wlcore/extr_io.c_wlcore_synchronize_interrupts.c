
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int irq; } ;


 int synchronize_irq (int ) ;

void wlcore_synchronize_interrupts(struct wl1271 *wl)
{
 synchronize_irq(wl->irq);
}
