
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 PWM_TO_REG(int val, int inv)
{
 if (inv)
  val = 255 - val;
 if (val < 0)
  return 0;
 if (val > 255)
  return 255;
 return val;
}
