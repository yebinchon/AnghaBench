
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_cc {int dummy; } ;


 int BCMA_CC_IRQMASK ;
 int bcma_cc_write32_masked (struct bcma_drv_cc*,int ,int ,int ) ;

void bcma_chipco_irq_mask(struct bcma_drv_cc *cc, u32 mask, u32 value)
{
 bcma_cc_write32_masked(cc, BCMA_CC_IRQMASK, mask, value);
}
