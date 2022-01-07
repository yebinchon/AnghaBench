
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SENSORS_LIMIT (int,int,int) ;

__attribute__((used)) static u8 fan_to_reg(long rpm, int div)
{
 if (rpm == 0)
  return 255;
 rpm = SENSORS_LIMIT(rpm, 1, 1000000);
 return SENSORS_LIMIT((1350000 + rpm * div / 2) / (rpm * div), 1, 254);
}
