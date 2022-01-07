
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_priv {int dummy; } ;
typedef int __le32 ;


 int IWLAGN_EXT_BEACON_TIME_POS ;
 scalar_t__ TIME_UNIT ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ iwl_beacon_time_mask_high (struct iwl_priv*,int) ;
 scalar_t__ iwl_beacon_time_mask_low (struct iwl_priv*,int) ;

__attribute__((used)) static __le32 iwl_add_beacon_time(struct iwl_priv *priv, u32 base,
      u32 addon, u32 beacon_interval)
{
 u32 base_low = base & iwl_beacon_time_mask_low(priv,
    IWLAGN_EXT_BEACON_TIME_POS);
 u32 addon_low = addon & iwl_beacon_time_mask_low(priv,
    IWLAGN_EXT_BEACON_TIME_POS);
 u32 interval = beacon_interval * TIME_UNIT;
 u32 res = (base & iwl_beacon_time_mask_high(priv,
    IWLAGN_EXT_BEACON_TIME_POS)) +
    (addon & iwl_beacon_time_mask_high(priv,
    IWLAGN_EXT_BEACON_TIME_POS));

 if (base_low > addon_low)
  res += base_low - addon_low;
 else if (base_low < addon_low) {
  res += interval + base_low - addon_low;
  res += (1 << IWLAGN_EXT_BEACON_TIME_POS);
 } else
  res += (1 << IWLAGN_EXT_BEACON_TIME_POS);

 return cpu_to_le32(res);
}
