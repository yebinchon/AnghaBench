
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline long TEMP_FROM_REG(u16 temp)
{
 long res;

 temp >>= 4;
 if (temp < 0x0800)
  res = 625 * (long) temp;
 else
  res = ((long) temp - 0x01000) * 625;

 return res / 10;
}
