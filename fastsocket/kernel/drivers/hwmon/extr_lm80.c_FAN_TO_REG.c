
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char SENSORS_LIMIT (int,int,int) ;

__attribute__((used)) static inline unsigned char FAN_TO_REG(unsigned rpm, unsigned div)
{
 if (rpm == 0)
  return 255;
 rpm = SENSORS_LIMIT(rpm, 1, 1000000);
 return SENSORS_LIMIT((1350000 + rpm*div / 2) / (rpm*div), 1, 254);
}
