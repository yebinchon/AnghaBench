
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;



__attribute__((used)) static inline s8
temp1_to_reg(long temp, int min, int max)
{
 if (temp <= min)
  return min / 1000;
 if (temp >= max)
  return max / 1000;
 if (temp < 0)
  return (temp - 500) / 1000;
 return (temp + 500) / 1000;
}
