
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_cc {int capabilities; } ;


 int BCMA_CC_CAP_PMU ;
 int bcma_pmu_get_alp_clock (struct bcma_drv_cc*) ;

__attribute__((used)) static u32 bcma_chipco_get_alp_clock(struct bcma_drv_cc *cc)
{
 if (cc->capabilities & BCMA_CC_CAP_PMU)
  return bcma_pmu_get_alp_clock(cc);

 return 20000000;
}
