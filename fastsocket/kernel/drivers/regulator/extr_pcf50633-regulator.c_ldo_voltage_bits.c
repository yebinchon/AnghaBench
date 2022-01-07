
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 ldo_voltage_bits(unsigned int millivolts)
{
 if (millivolts < 900)
  return 0;
 else if (millivolts > 3600)
  return 0x1f;

 millivolts -= 900;
 return millivolts / 100;
}
