
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int HZ ;
 int clk_get_rate (int ) ;
 int cpu_is_omap44xx () ;
 int gptimer ;
 int omap_dm_timer_get_fclk (int ) ;
 int omap_dm_timer_set_load_start (int ,int,int ) ;
 int omap_dm_timer_stop (int ) ;

__attribute__((used)) static void omap2_gp_timer_set_mode(enum clock_event_mode mode,
        struct clock_event_device *evt)
{
 u32 period;

 omap_dm_timer_stop(gptimer);

 switch (mode) {
 case 131:
  period = clk_get_rate(omap_dm_timer_get_fclk(gptimer)) / HZ;
  period -= 1;
  if (cpu_is_omap44xx())
   period = 0xff;
  omap_dm_timer_set_load_start(gptimer, 1, 0xffffffff - period);
  break;
 case 132:
  break;
 case 128:
 case 129:
 case 130:
  break;
 }
}
