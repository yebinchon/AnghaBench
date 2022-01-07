
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_dm_timer {int dummy; } ;


 int OMAP_TIMER_CTRL_REG ;
 int OMAP_TIMER_CTRL_ST ;
 int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,int) ;

void omap_dm_timer_stop(struct omap_dm_timer *timer)
{
 u32 l;

 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG);
 if (l & OMAP_TIMER_CTRL_ST) {
  l &= ~0x1;
  omap_dm_timer_write_reg(timer, OMAP_TIMER_CTRL_REG, l);
 }
}
