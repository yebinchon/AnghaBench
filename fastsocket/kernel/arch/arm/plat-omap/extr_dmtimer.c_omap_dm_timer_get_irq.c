
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {int irq; } ;



int omap_dm_timer_get_irq(struct omap_dm_timer *timer)
{
 return timer->irq;
}
