
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int hw_value; } ;


 TYPE_1__* mwl8k_rates_24 ;

__attribute__((used)) static void legacy_rate_mask_to_array(u8 *rates, u32 mask)
{
 int i;
 int j;




 mask &= 0x1fef;

 for (i = 0, j = 0; i < 13; i++) {
  if (mask & (1 << i))
   rates[j++] = mwl8k_rates_24[i].hw_value;
 }
}
