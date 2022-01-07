
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SENSORS_LIMIT (int,int,int) ;

__attribute__((used)) static inline u8 FAN_TO_REG(long rpm, int div)
{
 if (rpm <= 0)
  return 255;
 return SENSORS_LIMIT((1350000 + rpm * div / 2) / (rpm * div), 1, 254);
}
