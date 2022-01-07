
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int gptimer ;
 int omap_dm_timer_set_load_start (int ,int ,int) ;

__attribute__((used)) static int omap2_gp_timer_set_next_event(unsigned long cycles,
      struct clock_event_device *evt)
{
 omap_dm_timer_set_load_start(gptimer, 0, 0xffffffff - cycles);

 return 0;
}
