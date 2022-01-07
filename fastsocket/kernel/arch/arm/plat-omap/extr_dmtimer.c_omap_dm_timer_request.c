
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {int reserved; } ;


 int dm_timer_count ;
 int dm_timer_lock ;
 struct omap_dm_timer* dm_timers ;
 int omap_dm_timer_prepare (struct omap_dm_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct omap_dm_timer *omap_dm_timer_request(void)
{
 struct omap_dm_timer *timer = ((void*)0);
 unsigned long flags;
 int i;

 spin_lock_irqsave(&dm_timer_lock, flags);
 for (i = 0; i < dm_timer_count; i++) {
  if (dm_timers[i].reserved)
   continue;

  timer = &dm_timers[i];
  timer->reserved = 1;
  break;
 }
 spin_unlock_irqrestore(&dm_timer_lock, flags);

 if (timer != ((void*)0))
  omap_dm_timer_prepare(timer);

 return timer;
}
