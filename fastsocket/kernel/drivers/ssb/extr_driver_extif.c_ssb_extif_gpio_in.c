
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_extif {int dummy; } ;


 int SSB_EXTIF_GPIO_IN ;
 int extif_read32 (struct ssb_extif*,int ) ;

u32 ssb_extif_gpio_in(struct ssb_extif *extif, u32 mask)
{
 return extif_read32(extif, SSB_EXTIF_GPIO_IN) & mask;
}
