
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_dm_timer {int dummy; } ;


 int OMAP_TIMER_CTRL_GPOCFG ;
 int OMAP_TIMER_CTRL_PT ;
 int OMAP_TIMER_CTRL_REG ;
 int OMAP_TIMER_CTRL_SCPWM ;
 int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,int) ;

void omap_dm_timer_set_pwm(struct omap_dm_timer *timer, int def_on,
      int toggle, int trigger)
{
 u32 l;

 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG);
 l &= ~(OMAP_TIMER_CTRL_GPOCFG | OMAP_TIMER_CTRL_SCPWM |
        OMAP_TIMER_CTRL_PT | (0x03 << 10));
 if (def_on)
  l |= OMAP_TIMER_CTRL_SCPWM;
 if (toggle)
  l |= OMAP_TIMER_CTRL_PT;
 l |= trigger << 10;
 omap_dm_timer_write_reg(timer, OMAP_TIMER_CTRL_REG, l);
}
