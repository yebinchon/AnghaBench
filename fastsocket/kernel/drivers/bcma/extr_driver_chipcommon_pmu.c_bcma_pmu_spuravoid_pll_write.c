
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_cc {int dummy; } ;


 int BCMA_CC_PLLCTL_ADDR ;
 int BCMA_CC_PLLCTL_DATA ;
 int bcma_cc_write32 (struct bcma_drv_cc*,int ,int ) ;

__attribute__((used)) static void bcma_pmu_spuravoid_pll_write(struct bcma_drv_cc *cc, u32 offset,
      u32 value)
{
 bcma_cc_write32(cc, BCMA_CC_PLLCTL_ADDR, offset);
 bcma_cc_write32(cc, BCMA_CC_PLLCTL_DATA, value);
}
