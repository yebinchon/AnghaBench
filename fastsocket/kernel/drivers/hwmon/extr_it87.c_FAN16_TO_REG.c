
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SENSORS_LIMIT (int,int,int) ;

__attribute__((used)) static inline u16 FAN16_TO_REG(long rpm)
{
 if (rpm == 0)
  return 0xffff;
 return SENSORS_LIMIT((1350000 + rpm) / (rpm * 2), 1, 0xfffe);
}
