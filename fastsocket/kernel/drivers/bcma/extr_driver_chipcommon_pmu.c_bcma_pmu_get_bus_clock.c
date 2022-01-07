
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int rev; } ;
struct bcma_drv_cc {TYPE_3__ pmu; TYPE_1__* core; } ;
struct TYPE_5__ {int id; } ;
struct bcma_bus {TYPE_2__ chipinfo; } ;
struct TYPE_4__ {struct bcma_bus* bus; } ;


 int BCMA_CC_PMU4706_MAINPLL_PLL0 ;
 int BCMA_CC_PMU4716_MAINPLL_PLL0 ;
 int BCMA_CC_PMU5356_MAINPLL_PLL0 ;
 int BCMA_CC_PMU5357_MAINPLL_PLL0 ;
 int BCMA_CC_PMU5_MAINPLL_SSB ;
 int BCMA_CC_PMU_HT_CLOCK ;
 int bcma_pmu_pll_clock (struct bcma_drv_cc*,int ,int ) ;
 int bcma_pmu_pll_clock_bcm4706 (struct bcma_drv_cc*,int ,int ) ;
 int bcma_warn (struct bcma_bus*,char*,int,int ,int) ;

__attribute__((used)) static u32 bcma_pmu_get_bus_clock(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;

 switch (bus->chipinfo.id) {
 case 134:
 case 132:
 case 133:
  return bcma_pmu_pll_clock(cc, BCMA_CC_PMU4716_MAINPLL_PLL0,
       BCMA_CC_PMU5_MAINPLL_SSB);
 case 130:
  return bcma_pmu_pll_clock(cc, BCMA_CC_PMU5356_MAINPLL_PLL0,
       BCMA_CC_PMU5_MAINPLL_SSB);
 case 129:
 case 131:
  return bcma_pmu_pll_clock(cc, BCMA_CC_PMU5357_MAINPLL_PLL0,
       BCMA_CC_PMU5_MAINPLL_SSB);
 case 135:
  return bcma_pmu_pll_clock_bcm4706(cc,
        BCMA_CC_PMU4706_MAINPLL_PLL0,
        BCMA_CC_PMU5_MAINPLL_SSB);
 case 128:
  return 75000000;
 default:
  bcma_warn(bus, "No bus clock specified for %04X device, pmu rev. %d, using default %d Hz\n",
     bus->chipinfo.id, cc->pmu.rev, BCMA_CC_PMU_HT_CLOCK);
 }
 return BCMA_CC_PMU_HT_CLOCK;
}
