
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {int enabled; } ;


 int OMAP_TIMER_CTRL_REG ;
 int OMAP_TIMER_CTRL_ST ;
 int dm_timer_count ;
 struct omap_dm_timer* dm_timers ;
 int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;

int omap_dm_timers_active(void)
{
 int i;

 for (i = 0; i < dm_timer_count; i++) {
  struct omap_dm_timer *timer;

  timer = &dm_timers[i];

  if (!timer->enabled)
   continue;

  if (omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG) &
      OMAP_TIMER_CTRL_ST) {
   return 1;
  }
 }
 return 0;
}
