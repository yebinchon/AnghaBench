
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 auto_voltage_bits(unsigned int millivolts)
{
 if (millivolts < 1800)
  return 0;
 if (millivolts > 3800)
  return 0xff;

 millivolts -= 625;

 return millivolts / 25;
}
