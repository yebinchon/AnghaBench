
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int omap_mpu_remove_autoreset (int ) ;
 int omap_mpu_set_autoreset (int ) ;
 int omap_mpu_timer_stop (int ) ;

__attribute__((used)) static void omap_mpu_set_mode(enum clock_event_mode mode,
         struct clock_event_device *evt)
{
 switch (mode) {
 case 131:
  omap_mpu_set_autoreset(0);
  break;
 case 132:
  omap_mpu_timer_stop(0);
  omap_mpu_remove_autoreset(0);
  break;
 case 128:
 case 129:
 case 130:
  break;
 }
}
