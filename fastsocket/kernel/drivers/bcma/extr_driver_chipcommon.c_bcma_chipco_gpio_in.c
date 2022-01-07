
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_cc {int dummy; } ;


 int BCMA_CC_GPIOIN ;
 int bcma_cc_read32 (struct bcma_drv_cc*,int ) ;

u32 bcma_chipco_gpio_in(struct bcma_drv_cc *cc, u32 mask)
{
 return bcma_cc_read32(cc, BCMA_CC_GPIOIN) & mask;
}
