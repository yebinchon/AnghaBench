
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 void* SENSORS_LIMIT (unsigned int,long const,long const) ;
 long const* lm93_vin_reg_max ;
 long const* lm93_vin_reg_min ;
 int* lm93_vin_val_max ;
 int* lm93_vin_val_min ;

__attribute__((used)) static u8 LM93_IN_TO_REG(int nr, unsigned val)
{

 const long mV = SENSORS_LIMIT(val,
  lm93_vin_val_min[nr], lm93_vin_val_max[nr]);


 const long uV = mV * 1000;
 const long uV_max = lm93_vin_val_max[nr] * 1000;
 const long uV_min = lm93_vin_val_min[nr] * 1000;


 const long slope = (uV_max - uV_min) /
  (lm93_vin_reg_max[nr] - lm93_vin_reg_min[nr]);
 const long intercept = uV_min - slope * lm93_vin_reg_min[nr];

 u8 result = ((uV - intercept + (slope/2)) / slope);
 result = SENSORS_LIMIT(result,
   lm93_vin_reg_min[nr], lm93_vin_reg_max[nr]);
 return result;
}
