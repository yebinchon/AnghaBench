
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SENSORS_LIMIT (int,int,int) ;

__attribute__((used)) static inline u8 FAN_TO_REG(long rpm, int div)
{
 long rpmdiv;
 if (rpm == 0)
  return 0;
 rpmdiv = SENSORS_LIMIT(rpm, 1, 960000) * div;
 return SENSORS_LIMIT((480000 + rpmdiv / 2) / rpmdiv, 1, 255);
}
