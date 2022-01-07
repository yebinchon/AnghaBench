
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {int dummy; } ;


 int omap_dm_timer_enable (struct omap_dm_timer*) ;
 int omap_dm_timer_reset (struct omap_dm_timer*) ;

__attribute__((used)) static void omap_dm_timer_prepare(struct omap_dm_timer *timer)
{
 omap_dm_timer_enable(timer);
 omap_dm_timer_reset(timer);
}
