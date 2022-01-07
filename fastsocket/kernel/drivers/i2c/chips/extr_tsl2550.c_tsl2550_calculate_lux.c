
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;


 int EAGAIN ;
 unsigned int TSL2550_MAX_LUX ;
 int* count_lut ;
 int* ratio_lut ;

__attribute__((used)) static int tsl2550_calculate_lux(u8 ch0, u8 ch1)
{
 unsigned int lux;


 u16 c0 = count_lut[ch0];
 u16 c1 = count_lut[ch1];





 u8 r = 128;


 if (c1 <= c0)
  if (c0) {
   r = c1 * 128 / c0;


   lux = ((c0 - c1) * ratio_lut[r]) / 256;
  } else
   lux = 0;
 else
  return -EAGAIN;


 return lux > TSL2550_MAX_LUX ? TSL2550_MAX_LUX : lux;
}
