
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_chipcommon {int dummy; } ;


 int SSB_CHIPCO_GPIOOUT ;
 int chipco_write32_masked (struct ssb_chipcommon*,int ,int ,int ) ;

u32 ssb_chipco_gpio_out(struct ssb_chipcommon *cc, u32 mask, u32 value)
{
 return chipco_write32_masked(cc, SSB_CHIPCO_GPIOOUT, mask, value);
}
