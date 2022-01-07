
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 down_voltage_bits(unsigned int millivolts)
{
 if (millivolts < 625)
  return 0;
 else if (millivolts > 3000)
  return 0xff;

 millivolts -= 625;

 return millivolts / 25;
}
