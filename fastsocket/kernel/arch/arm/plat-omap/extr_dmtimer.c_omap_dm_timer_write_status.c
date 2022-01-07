
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {int dummy; } ;


 int OMAP_TIMER_STAT_REG ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,unsigned int) ;

void omap_dm_timer_write_status(struct omap_dm_timer *timer, unsigned int value)
{
 omap_dm_timer_write_reg(timer, OMAP_TIMER_STAT_REG, value);
}
