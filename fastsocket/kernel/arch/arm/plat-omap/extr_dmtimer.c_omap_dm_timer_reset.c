
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_dm_timer {int posted; } ;


 int OMAP_TIMER_CTRL_POSTED ;
 int OMAP_TIMER_IF_CTRL_REG ;
 int OMAP_TIMER_OCP_CFG_REG ;
 int OMAP_TIMER_SRC_32_KHZ ;
 scalar_t__ cpu_class_is_omap2 () ;
 struct omap_dm_timer* dm_timers ;
 int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_set_source (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_wait_for_reset (struct omap_dm_timer*) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,int) ;

__attribute__((used)) static void omap_dm_timer_reset(struct omap_dm_timer *timer)
{
 u32 l;

 if (!cpu_class_is_omap2() || timer != &dm_timers[0]) {
  omap_dm_timer_write_reg(timer, OMAP_TIMER_IF_CTRL_REG, 0x06);
  omap_dm_timer_wait_for_reset(timer);
 }
 omap_dm_timer_set_source(timer, OMAP_TIMER_SRC_32_KHZ);

 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_OCP_CFG_REG);
 l |= 0x02 << 3;
 l |= 0x2 << 8;




 if (cpu_class_is_omap2())
  l |= 1 << 2;
 omap_dm_timer_write_reg(timer, OMAP_TIMER_OCP_CFG_REG, l);


 omap_dm_timer_write_reg(timer, OMAP_TIMER_IF_CTRL_REG,
   OMAP_TIMER_CTRL_POSTED);
 timer->posted = 1;
}
