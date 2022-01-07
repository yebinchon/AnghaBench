
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_chipcommon {int dummy; } ;


 int SSB_CHIPCO_WATCHDOG ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int ) ;

void ssb_chipco_watchdog_timer_set(struct ssb_chipcommon *cc, u32 ticks)
{

 chipco_write32(cc, SSB_CHIPCO_WATCHDOG, ticks);
}
