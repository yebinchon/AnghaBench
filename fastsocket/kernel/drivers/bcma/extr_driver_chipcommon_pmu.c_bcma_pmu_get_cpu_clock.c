
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int rev; } ;
struct bcma_drv_cc {TYPE_2__ pmu; TYPE_1__* core; } ;
struct TYPE_6__ {int id; } ;
struct bcma_bus {TYPE_3__ chipinfo; } ;
struct TYPE_4__ {struct bcma_bus* bus; } ;


 int BCMA_CC_PMU4706_MAINPLL_PLL0 ;
 int BCMA_CC_PMU4716_MAINPLL_PLL0 ;
 int BCMA_CC_PMU5356_MAINPLL_PLL0 ;
 int BCMA_CC_PMU5357_MAINPLL_PLL0 ;
 int BCMA_CC_PMU5_MAINPLL_CPU ;




 int BCMA_CHIP_ID_BCM53572 ;
 int bcma_pmu_get_bus_clock (struct bcma_drv_cc*) ;
 int bcma_pmu_pll_clock (struct bcma_drv_cc*,int,int ) ;
 int bcma_pmu_pll_clock_bcm4706 (struct bcma_drv_cc*,int ,int ) ;

u32 bcma_pmu_get_cpu_clock(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;

 if (bus->chipinfo.id == BCMA_CHIP_ID_BCM53572)
  return 300000000;


 if (cc->pmu.rev >= 5) {
  u32 pll;
  switch (bus->chipinfo.id) {
  case 131:
   return bcma_pmu_pll_clock_bcm4706(cc,
      BCMA_CC_PMU4706_MAINPLL_PLL0,
      BCMA_CC_PMU5_MAINPLL_CPU);
  case 129:
   pll = BCMA_CC_PMU5356_MAINPLL_PLL0;
   break;
  case 128:
  case 130:
   pll = BCMA_CC_PMU5357_MAINPLL_PLL0;
   break;
  default:
   pll = BCMA_CC_PMU4716_MAINPLL_PLL0;
   break;
  }

  return bcma_pmu_pll_clock(cc, pll, BCMA_CC_PMU5_MAINPLL_CPU);
 }


 return bcma_pmu_get_bus_clock(cc);
}
