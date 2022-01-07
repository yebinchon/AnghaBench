
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline long
FAN_FROM_REG(u8 val, int div)
{
 if (val == 0)
  return -1;
 if (val == 255)
  return 0;
 return 1350000 / (val * div);
}
