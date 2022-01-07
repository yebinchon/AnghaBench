
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {scalar_t__ enabled; int fclk; int iclk; } ;


 int omap_dm_clk_disable (int ) ;

void omap_dm_timer_disable(struct omap_dm_timer *timer)
{
 if (!timer->enabled)
  return;

 omap_dm_clk_disable(timer->iclk);
 omap_dm_clk_disable(timer->fclk);

 timer->enabled = 0;
}
