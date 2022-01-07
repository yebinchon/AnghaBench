
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_dm_timer {int dummy; } ;


 int OMAP_TIMER_CTRL_PRE ;
 int OMAP_TIMER_CTRL_REG ;
 int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,int) ;

void omap_dm_timer_set_prescaler(struct omap_dm_timer *timer, int prescaler)
{
 u32 l;

 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG);
 l &= ~(OMAP_TIMER_CTRL_PRE | (0x07 << 2));
 if (prescaler >= 0x00 && prescaler <= 0x07) {
  l |= OMAP_TIMER_CTRL_PRE;
  l |= prescaler << 2;
 }
 omap_dm_timer_write_reg(timer, OMAP_TIMER_CTRL_REG, l);
}
