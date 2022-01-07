
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_extif {int dummy; } ;


 int SSB_EXTIF_GPIO_INTPOL ;
 int extif_write32_masked (struct ssb_extif*,int ,int ,int ) ;

u32 ssb_extif_gpio_polarity(struct ssb_extif *extif, u32 mask, u32 value)
{
 return extif_write32_masked(extif, SSB_EXTIF_GPIO_INTPOL, mask, value);
}
