
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long const u8 ;


 long const* lm93_vin_reg_max ;
 long const* lm93_vin_reg_min ;
 int* lm93_vin_val_max ;
 int* lm93_vin_val_min ;

__attribute__((used)) static unsigned LM93_IN_FROM_REG(int nr, u8 reg)
{
 const long uV_max = lm93_vin_val_max[nr] * 1000;
 const long uV_min = lm93_vin_val_min[nr] * 1000;

 const long slope = (uV_max - uV_min) /
  (lm93_vin_reg_max[nr] - lm93_vin_reg_min[nr]);
 const long intercept = uV_min - slope * lm93_vin_reg_min[nr];

 return (slope * reg + intercept + 500) / 1000;
}
