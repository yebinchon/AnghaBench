
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SENSORS_LIMIT (long,int ,int) ;

__attribute__((used)) static inline u8 IN_TO_REG(long val, int inNum)
{





 if (inNum <= 1)
  return (u8)
      SENSORS_LIMIT((val * 21024 - 1205000) / 250000, 0, 255);
 else if (inNum == 2)
  return (u8)
      SENSORS_LIMIT((val * 15737 - 1205000) / 250000, 0, 255);
 else if (inNum == 3)
  return (u8)
      SENSORS_LIMIT((val * 10108 - 1205000) / 250000, 0, 255);
 else
  return (u8)
      SENSORS_LIMIT((val * 41714 - 12050000) / 2500000, 0, 255);
}
