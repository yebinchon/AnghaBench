
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 pwm_freq_to_reg(unsigned long val)
{
 if (val >= 187500)
  return 0x80;
 if (val >= 1475)
  return 0x80 | (48000000UL / (val << 8));
 if (val < 31)
  return 0x7f;
 else
  return 1000000UL / (val << 8);
}
