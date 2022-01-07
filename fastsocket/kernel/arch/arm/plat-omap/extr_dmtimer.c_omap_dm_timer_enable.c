
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {int enabled; int iclk; int fclk; } ;


 int omap_dm_clk_enable (int ) ;

void omap_dm_timer_enable(struct omap_dm_timer *timer)
{
 if (timer->enabled)
  return;

 omap_dm_clk_enable(timer->fclk);
 omap_dm_clk_enable(timer->iclk);

 timer->enabled = 1;
}
