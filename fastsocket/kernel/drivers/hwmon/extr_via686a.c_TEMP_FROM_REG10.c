
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 long TEMP_FROM_REG (int) ;
 int* tempLUT ;

__attribute__((used)) static inline long TEMP_FROM_REG10(u16 val)
{
 u16 eightBits = val >> 2;
 u16 twoBits = val & 3;


 if (twoBits == 0 || eightBits == 255)
  return TEMP_FROM_REG(eightBits);


 return (tempLUT[eightBits] * (4 - twoBits) +
  tempLUT[eightBits + 1] * twoBits) * 25;
}
