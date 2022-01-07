
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {scalar_t__ reserved; } ;


 int WARN_ON (int) ;
 int omap_dm_timer_disable (struct omap_dm_timer*) ;
 int omap_dm_timer_enable (struct omap_dm_timer*) ;
 int omap_dm_timer_reset (struct omap_dm_timer*) ;

void omap_dm_timer_free(struct omap_dm_timer *timer)
{
 omap_dm_timer_enable(timer);
 omap_dm_timer_reset(timer);
 omap_dm_timer_disable(timer);

 WARN_ON(!timer->reserved);
 timer->reserved = 0;
}
