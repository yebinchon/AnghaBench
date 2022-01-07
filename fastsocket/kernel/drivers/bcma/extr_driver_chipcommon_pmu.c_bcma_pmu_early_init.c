
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int rev; } ;
struct bcma_drv_cc {TYPE_2__ pmu; TYPE_1__* core; } ;
struct TYPE_3__ {int bus; } ;


 int BCMA_CC_PMU_CAP ;
 int BCMA_CC_PMU_CAP_REVISION ;
 int bcma_cc_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_debug (int ,char*,int,int) ;

void bcma_pmu_early_init(struct bcma_drv_cc *cc)
{
 u32 pmucap;

 pmucap = bcma_cc_read32(cc, BCMA_CC_PMU_CAP);
 cc->pmu.rev = (pmucap & BCMA_CC_PMU_CAP_REVISION);

 bcma_debug(cc->core->bus, "Found rev %u PMU (capabilities 0x%08X)\n",
     cc->pmu.rev, pmucap);
}
