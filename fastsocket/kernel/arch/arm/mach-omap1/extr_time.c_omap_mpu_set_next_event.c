
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int omap_mpu_timer_start (int ,unsigned long,int ) ;

__attribute__((used)) static int omap_mpu_set_next_event(unsigned long cycles,
       struct clock_event_device *evt)
{
 omap_mpu_timer_start(0, cycles, 0);
 return 0;
}
