
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_extif {int dummy; } ;


 int SSB_EXTIF_WATCHDOG ;
 int extif_write32 (struct ssb_extif*,int ,int ) ;

void ssb_extif_watchdog_timer_set(struct ssb_extif *extif,
      u32 ticks)
{
 extif_write32(extif, SSB_EXTIF_WATCHDOG, ticks);
}
