
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SENSORS_LIMIT (int,int,int) ;

__attribute__((used)) static inline u8 FAN_TO_REG(long rpm, int div)
{
 if (rpm == 0)
  return 0;
 return SENSORS_LIMIT(1310720 / (rpm * div), 1, 255);
}
