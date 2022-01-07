
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct omap_dm_timer {int dummy; } ;


 unsigned int OMAP_TIMER_CTRL_AR ;
 int OMAP_TIMER_CTRL_REG ;
 int OMAP_TIMER_LOAD_REG ;
 int OMAP_TIMER_TRIGGER_REG ;
 unsigned int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,unsigned int) ;

void omap_dm_timer_set_load(struct omap_dm_timer *timer, int autoreload,
       unsigned int load)
{
 u32 l;

 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG);
 if (autoreload)
  l |= OMAP_TIMER_CTRL_AR;
 else
  l &= ~OMAP_TIMER_CTRL_AR;
 omap_dm_timer_write_reg(timer, OMAP_TIMER_CTRL_REG, l);
 omap_dm_timer_write_reg(timer, OMAP_TIMER_LOAD_REG, load);

 omap_dm_timer_write_reg(timer, OMAP_TIMER_TRIGGER_REG, 0);
}
