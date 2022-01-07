
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bcma_drv_cc {int capabilities; TYPE_1__* core; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct bcma_bus {TYPE_2__ chipinfo; } ;
struct TYPE_3__ {struct bcma_bus* bus; } ;


 int BCMA_CC_CAP_PMU ;
 scalar_t__ BCMA_CHIP_ID_BCM4706 ;
 int bcma_chipco_get_alp_clock (struct bcma_drv_cc*) ;

__attribute__((used)) static int bcma_chipco_watchdog_ticks_per_ms(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;

 if (cc->capabilities & BCMA_CC_CAP_PMU) {
  if (bus->chipinfo.id == BCMA_CHIP_ID_BCM4706)

   return bcma_chipco_get_alp_clock(cc) / 4000;
  else

   return 32;
 } else {
  return bcma_chipco_get_alp_clock(cc) / 1000;
 }
}
