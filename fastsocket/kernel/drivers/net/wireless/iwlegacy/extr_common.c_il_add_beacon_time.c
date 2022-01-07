
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int beacon_time_tsf_bits; } ;
struct il_priv {TYPE_1__ hw_params; } ;
typedef int __le32 ;


 scalar_t__ TIME_UNIT ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ il_beacon_time_mask_high (struct il_priv*,int) ;
 scalar_t__ il_beacon_time_mask_low (struct il_priv*,int) ;

__le32
il_add_beacon_time(struct il_priv *il, u32 base, u32 addon,
     u32 beacon_interval)
{
 u32 base_low = base & il_beacon_time_mask_low(il,
            il->hw_params.
            beacon_time_tsf_bits);
 u32 addon_low = addon & il_beacon_time_mask_low(il,
       il->hw_params.
       beacon_time_tsf_bits);
 u32 interval = beacon_interval * TIME_UNIT;
 u32 res = (base & il_beacon_time_mask_high(il,
         il->hw_params.
         beacon_time_tsf_bits)) +
     (addon & il_beacon_time_mask_high(il,
           il->hw_params.
           beacon_time_tsf_bits));

 if (base_low > addon_low)
  res += base_low - addon_low;
 else if (base_low < addon_low) {
  res += interval + base_low - addon_low;
  res += (1 << il->hw_params.beacon_time_tsf_bits);
 } else
  res += (1 << il->hw_params.beacon_time_tsf_bits);

 return cpu_to_le32(res);
}
