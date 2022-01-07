
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int __le16 ;


 int cpu_to_le16 (int) ;
 int lbs_data_rate_to_fw_index (int) ;

__attribute__((used)) static __le16 lbs_rate_to_fw_bitmap(int rate, int lower_rates_ok)
{
 uint16_t ratemask;
 int i = lbs_data_rate_to_fw_index(rate);
 if (lower_rates_ok)
  ratemask = (0x1fef >> (12 - i));
 else
  ratemask = (1 << i);
 return cpu_to_le16(ratemask);
}
