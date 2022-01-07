
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int MMC_VDD_165_195 ;
 int MMC_VDD_35_36 ;
 int ilog2 (int ) ;

__attribute__((used)) static int mmc_vdd_to_ocrbitnum(int vdd, bool low_bits)
{
 const int max_bit = ilog2(MMC_VDD_35_36);
 int bit;

 if (vdd < 1650 || vdd > 3600)
  return -EINVAL;

 if (vdd >= 1650 && vdd <= 1950)
  return ilog2(MMC_VDD_165_195);

 if (low_bits)
  vdd -= 1;


 bit = (vdd - 2000) / 100 + 8;
 if (bit > max_bit)
  return max_bit;
 return bit;
}
