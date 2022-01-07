
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_bus {int extif; int chipco; } ;


 int ENODEV ;
 scalar_t__ ssb_chipco_available (int *) ;
 int ssb_chipco_watchdog_timer_set (int *,int ) ;
 scalar_t__ ssb_extif_available (int *) ;
 int ssb_extif_watchdog_timer_set (int *,int ) ;

int ssb_watchdog_timer_set(struct ssb_bus *bus, u32 ticks)
{
 if (ssb_chipco_available(&bus->chipco)) {
  ssb_chipco_watchdog_timer_set(&bus->chipco, ticks);
  return 0;
 }
 if (ssb_extif_available(&bus->extif)) {
  ssb_extif_watchdog_timer_set(&bus->extif, ticks);
  return 0;
 }
 return -ENODEV;
}
