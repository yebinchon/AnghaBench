
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct omap_dm_timer {int dummy; } ;


 unsigned int OMAP_TIMER_CTRL_CE ;
 int OMAP_TIMER_CTRL_REG ;
 int OMAP_TIMER_MATCH_REG ;
 unsigned int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,unsigned int) ;

void omap_dm_timer_set_match(struct omap_dm_timer *timer, int enable,
        unsigned int match)
{
 u32 l;

 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG);
 if (enable)
  l |= OMAP_TIMER_CTRL_CE;
 else
  l &= ~OMAP_TIMER_CTRL_CE;
 omap_dm_timer_write_reg(timer, OMAP_TIMER_CTRL_REG, l);
 omap_dm_timer_write_reg(timer, OMAP_TIMER_MATCH_REG, match);
}
